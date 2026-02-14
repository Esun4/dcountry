import Foundation

struct Country: Identifiable, Codable, Equatable {
    let id: String
    let code: String
    let name: String
    let capital: String
    let continent: String
    let funFact: String
    let clues: [Clue]
}

enum ClueType: String, Codable {
    case text
    case image
}

struct Clue: Codable, Equatable {
    let type: ClueType
    let value: String
    let label: String?
}

struct DailyGameState: Codable, Equatable {
    let dateKey: String
    let countryCode: String
    var guesses: [String]
    var status: GameStatus
    var revealedClues: Int
}

enum GameStatus: String, Codable {
    case playing
    case won
    case lost
}

enum GuessProximity {
    case correct   // green — exact match
    case close     // yellow — same continent
    case far       // red — different continent
}
