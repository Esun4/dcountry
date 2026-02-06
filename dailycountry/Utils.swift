import Foundation

func todayKey(date: Date = Date()) -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.timeZone = TimeZone.current
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter.string(from: date)
}

func simpleHash(_ s: String) -> Int {
    var h = 0
    for u in s.unicodeScalars {
        h = (h &* 31) &+ Int(u.value)
    }
    return abs(h)
}

func dailyCountryIndex(dateKey: String, count: Int) -> Int {
    guard count > 0 else { return 0 }
    return simpleHash(dateKey) % count
}
