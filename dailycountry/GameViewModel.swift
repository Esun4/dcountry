import Foundation
import SwiftUI
import Combine

final class GameViewModel: ObservableObject {
    @Published var state: DailyGameState
    @Published var answerCountry: Country
    @Published var showDuplicateGuessAlert: Bool = false

    private let countries: [Country]

    init(countries: [Country] = Countries.all) {
        self.countries = countries
        let dateKey = todayKey()
        if let saved = Storage.load(DailyGameState.self, key: Self.storageKey(for: dateKey)),
           let answer = countries.first(where: { $0.code == saved.countryCode }) {
            self.state = saved
            self.answerCountry = answer
        } else {
            let newState = Self.newState(for: dateKey, countries: countries)
            self.state = newState
            self.answerCountry = countries.first(where: { $0.code == newState.countryCode }) ?? countries[0]
            save()
        }
    }

    func loadOrCreateToday() {
        let dateKey = todayKey()
        if let saved = Storage.load(DailyGameState.self, key: Self.storageKey(for: dateKey)),
           let answer = countries.first(where: { $0.code == saved.countryCode }) {
            state = saved
            answerCountry = answer
        } else {
            state = Self.newState(for: dateKey, countries: countries)
            answerCountry = countries.first(where: { $0.code == state.countryCode }) ?? countries[0]
            save()
        }
    }

    func submitGuess(_ country: Country) {
        guard state.status == .playing else { return }
        if state.guesses.contains(country.code) {
            showDuplicateGuessAlert = true
            return
        }

        state.guesses.append(country.code)

        if country.code == state.countryCode {
            state.status = .won
        } else {
            state.revealedClues = min(5, state.revealedClues + 1)
            if state.guesses.count >= 5 {
                state.status = .lost
            }
        }

        save()
    }

    func resetToday() {
        let dateKey = todayKey()
        Storage.remove(key: Self.storageKey(for: dateKey))
        loadOrCreateToday()
    }

    func countryName(for code: String) -> String {
        countries.first(where: { $0.code == code })?.name ?? code
    }

    func guessIsCorrect(_ code: String) -> Bool {
        code == state.countryCode
    }

    func guessProximity(for guessCode: String) -> GuessProximity {
        if guessCode == state.countryCode { return .correct }
        let guessContinent = countries.first(where: { $0.code == guessCode })?.continent
        return guessContinent == answerCountry.continent ? .close : .far
    }

    func shareSummary() -> String {
        let resultSymbol = state.status == .won ? "✅" : "❌"
        let attempts = state.status == .won ? "\(state.guesses.count)/5" : "5/5"
        return "Daily Country (\(state.dateKey)): \(resultSymbol) in \(attempts)"
    }

    private func save() {
        Storage.save(state, key: Self.storageKey(for: state.dateKey))
    }

    private static func storageKey(for dateKey: String) -> String {
        "dailyCountryState_\(dateKey)"
    }

    private static func newState(for dateKey: String, countries: [Country]) -> DailyGameState {
        let index = dailyCountryIndex(dateKey: dateKey, count: countries.count)
        let answer = countries[index]
        return DailyGameState(
            dateKey: dateKey,
            countryCode: answer.code,
            guesses: [],
            status: .playing,
            revealedClues: 1
        )
    }
}
