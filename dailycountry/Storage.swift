import Foundation

enum Storage {
    static func save<T: Codable>(_ value: T, key: String) {
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(value) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }

    static func load<T: Codable>(_ type: T.Type, key: String) -> T? {
        guard let data = UserDefaults.standard.data(forKey: key) else { return nil }
        let decoder = JSONDecoder()
        return try? decoder.decode(type, from: data)
    }

    static func remove(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
}
