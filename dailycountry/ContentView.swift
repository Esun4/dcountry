import SwiftUI
import UIKit

struct ContentView: View {
    @StateObject private var viewModel = GameViewModel()
    @State private var showingResult = false
    @State private var guessText = ""
    @FocusState private var isSearchFocused: Bool

    private var displayedCountries: [Country] {
        let trimmed = guessText.trimmingCharacters(in: .whitespacesAndNewlines)
        if trimmed.isEmpty {
            return Countries.all
        }
        return Countries.all.filter { $0.name.localizedCaseInsensitiveContains(trimmed) }
    }

    private var cluesRemaining: Int {
        max(0, 5 - viewModel.state.revealedClues)
    }

    private var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        return formatter.string(from: Date())
    }

    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                colors: [Color.white, Color(red: 0.93, green: 0.91, blue: 0.98)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        header
                        cluesRemainingBar
                        clueSection
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 12)
                    .padding(.bottom, 20)
                }

                Divider()
                guessSection
                    .padding(.horizontal, 20)
                    .padding(.vertical, 16)
                    .background(Color.white.opacity(0.8))
            }
        }
        .onAppear {
            viewModel.loadOrCreateToday()
        }
        .onChange(of: viewModel.state.status) { oldStatus, newStatus in
            if newStatus != .playing {
                showingResult = true
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

    private var header: some View {
        HStack(alignment: .center) {
            // Globe icon
            ZStack {
                Circle()
                    .fill(Color(red: 0.35, green: 0.34, blue: 0.63))
                    .frame(width: 48, height: 48)
                Image(systemName: "globe")
                    .font(.title2)
                    .foregroundColor(.white)
            }

            VStack(alignment: .leading, spacing: 2) {
                Text("Daily Country")
                    .font(.title2.bold())
                    .onLongPressGesture {
                        viewModel.resetToday()
                    }
                Text("Guess today's country")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            Spacer()

            // Date badge
            HStack(spacing: 4) {
                Image(systemName: "calendar")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(formattedDate)
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(.primary)
            }
        }
    }

    private var cluesRemainingBar: some View {
        HStack {
            Spacer()
            Image(systemName: "lightbulb")
                .foregroundColor(.orange)
            Text("Clues Remaining: \(Text("\(cluesRemaining)").bold())")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Spacer()
        }
        .padding(.vertical, 12)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.04), radius: 4, y: 2)
        )
    }

    private var clueSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("CLUES")
                .font(.caption.bold())
                .foregroundColor(.primary)
                .tracking(1)

            ForEach(0..<viewModel.state.revealedClues, id: \.self) { index in
                let clue = viewModel.answerCountry.clues[index]
                ClueCardView(clue: clue)
            }
        }
    }

    private var guessSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Country list shown when search is focused
            if isSearchFocused && viewModel.state.status == .playing {
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(displayedCountries) { country in
                            Button {
                                viewModel.submitGuess(country)
                                guessText = ""
                                isSearchFocused = false
                            } label: {
                                HStack {
                                    Text(country.name)
                                        .foregroundColor(.primary)
                                    Spacer()
                                    Text(country.continent)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 12)
                            }
                            Divider().padding(.leading, 16)
                        }
                    }
                }
                .frame(maxHeight: 200)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.white)
                        .shadow(color: .black.opacity(0.08), radius: 8, y: -2)
                )
            }

            Text("Make Your Guess")
                .font(.headline)

            HStack(spacing: 10) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.secondary)
                TextField("Type a country name...", text: $guessText)
                    .textFieldStyle(.plain)
                    .focused($isSearchFocused)
                    .disabled(viewModel.state.status != .playing)
                    .onSubmit {
                        if let match = displayedCountries.first {
                            viewModel.submitGuess(match)
                            guessText = ""
                            isSearchFocused = false
                        }
                    }
                if !guessText.isEmpty {
                    Button {
                        guessText = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(14)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(.systemGray6))
            )
        }
    }
}

private struct ClueCardView: View {
    let clue: Clue

    private var categoryColor: Color {
        switch clue.label?.lowercased() {
        case "geography": return Color(red: 0.15, green: 0.55, blue: 0.52)
        case "culture": return Color(red: 0.6, green: 0.35, blue: 0.7)
        case "food": return Color.orange
        case "landmark": return Color(red: 0.2, green: 0.5, blue: 0.8)
        case "flag": return Color.red
        default: return .secondary
        }
    }

    private var categoryIcon: String {
        switch clue.label?.lowercased() {
        case "geography": return "lock"
        case "culture": return "theatermasks"
        case "food": return "fork.knife"
        case "landmark": return "building.columns"
        case "flag": return "flag"
        default: return "questionmark.circle"
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 6) {
                Image(systemName: categoryIcon)
                    .font(.caption)
                    .foregroundColor(categoryColor)
                if let label = clue.label {
                    Text(label.uppercased())
                        .font(.caption.bold())
                        .foregroundColor(categoryColor)
                        .tracking(0.5)
                }
            }

            switch clue.type {
            case .text:
                Text(clue.value)
                    .font(.body)
                    .foregroundColor(.primary)
            case .image:
                AsyncImage(url: URL(string: clue.value)) { phase in
                    switch phase {
                    case .empty:
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.1))
                            ProgressView()
                        }
                        .frame(height: 180)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 180)
                            .clipped()
                            .cornerRadius(10)
                    case .failure:
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.1))
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
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.04), radius: 4, y: 2)
        )
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
