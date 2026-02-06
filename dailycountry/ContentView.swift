import SwiftUI
import UIKit

struct ContentView: View {
    @StateObject private var viewModel = GameViewModel()
    @State private var showingPicker = false
    @State private var showingResult = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    header
                    clueSection
                    guessSection
                }
                .padding(20)
            }
            .toolbar(.hidden, for: .navigationBar)
            .onAppear {
                viewModel.loadOrCreateToday()
            }
            .onChange(of: viewModel.state.status) { newStatus in
                if newStatus != .playing {
                    showingResult = true
                }
            }
            .sheet(isPresented: $showingPicker) {
                CountryPickerView(countries: Countries.all) { country in
                    viewModel.submitGuess(country)
                }
            }
            .sheet(isPresented: $showingResult) {
                ResultSheetView(
                    status: viewModel.state.status,
                    answer: viewModel.answerCountry,
                    dateKey: viewModel.state.dateKey,
                    shareText: viewModel.shareSummary()
                ) {
                    showingResult = false
                }
            }
            .alert("Already guessed", isPresented: $viewModel.showDuplicateGuessAlert) {
                Button("OK", role: .cancel) {}
            } message: {
                Text("Pick a different country.")
            }
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Daily Country")
                .font(.largeTitle.bold())
                .onLongPressGesture {
                    viewModel.resetToday()
                }
            Text("Puzzle for \(viewModel.state.dateKey)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text("Guesses remaining: \(max(0, 5 - viewModel.state.guesses.count))")
                .font(.subheadline.weight(.semibold))
        }
    }

    private var clueSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Clues")
                .font(.title3.bold())
            ForEach(0..<viewModel.state.revealedClues, id: \.self) { index in
                let clue = viewModel.answerCountry.clues[index]
                ClueCardView(clue: clue, index: index + 1)
            }
        }
    }

    private var guessSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Button(action: {
                showingPicker = true
            }) {
                Text("Pick a country")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(viewModel.state.status == .playing ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .disabled(viewModel.state.status != .playing)

            Text("Guess history")
                .font(.title3.bold())

            GuessHistoryView(guesses: viewModel.state.guesses, nameForCode: viewModel.countryName(for:), isCorrect: viewModel.guessIsCorrect(_:))
        }
    }
}

private struct ClueCardView: View {
    let clue: Clue
    let index: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Clue \(index)")
                    .font(.headline)
                Spacer()
                if let label = clue.label {
                    Text(label)
                        .font(.caption)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.blue.opacity(0.15))
                        .cornerRadius(8)
                }
            }

            switch clue.type {
            case .text:
                Text(clue.value)
                    .font(.body)
            case .image:
                AsyncImage(url: URL(string: clue.value)) { phase in
                    switch phase {
                    case .empty:
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.gray.opacity(0.15))
                            ProgressView()
                        }
                        .frame(height: 180)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 180)
                            .clipped()
                            .cornerRadius(12)
                    case .failure:
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.gray.opacity(0.15))
                            Image(systemName: "photo")
                                .font(.largeTitle)
                                .foregroundColor(.secondary)
                        }
                        .frame(height: 180)
                    @unknown default:
                        EmptyView()
                    }
                }
            }
        }
        .padding(14)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(14)
    }
}

private struct GuessHistoryView: View {
    let guesses: [String]
    let nameForCode: (String) -> String
    let isCorrect: (String) -> Bool

    private let columns = [GridItem(.adaptive(minimum: 120), spacing: 8)]

    var body: some View {
        if guesses.isEmpty {
            Text("No guesses yet")
                .foregroundColor(.secondary)
        } else {
            LazyVGrid(columns: columns, alignment: .leading, spacing: 8) {
                ForEach(guesses.reversed(), id: \.self) { code in
                    HStack(spacing: 6) {
                        Text(nameForCode(code))
                            .font(.subheadline.weight(.semibold))
                        Text(isCorrect(code) ? "✅" : "❌")
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 8)
                    .background(Color(.tertiarySystemBackground))
                    .cornerRadius(10)
                }
            }
        }
    }
}

private struct CountryPickerView: View {
    let countries: [Country]
    let onSelect: (Country) -> Void

    @Environment(\.dismiss) private var dismiss
    @State private var searchText = ""

    var filtered: [Country] {
        if searchText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return countries
        }
        return countries.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
    }

    var body: some View {
        NavigationStack {
            List(filtered) { country in
                Button(action: {
                    onSelect(country)
                    dismiss()
                }) {
                    VStack(alignment: .leading) {
                        Text(country.name)
                            .font(.body)
                        Text(country.continent)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Pick a country")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Close") {
                        dismiss()
                    }
                }
            }
            .searchable(text: $searchText)
        }
    }
}

private struct ResultSheetView: View {
    let status: GameStatus
    let answer: Country
    let dateKey: String
    let shareText: String
    let onDone: () -> Void

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                Text(status == .won ? "You got it!" : "Out of guesses")
                    .font(.largeTitle.bold())

                Text("Answer: \(answer.name)")
                    .font(.title3.weight(.semibold))

                Text("Puzzle for \(dateKey)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Learn card")
                        .font(.headline)
                    Text("Capital: \(answer.capital)")
                    Text("Continent: \(answer.continent)")
                    Text(answer.funFact)
                        .font(.body)
                }
                .padding(14)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)

                Button(action: {
                    UIPasteboard.general.string = shareText
                }) {
                    Text("Share")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }

                Spacer()
            }
            .padding(20)
            .navigationTitle("Daily Country")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") {
                        onDone()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
