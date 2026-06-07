import Foundation

public enum Environment {
    public static var baseURL: URL {
        let urlString = Bundle.main.object(forInfoDictionaryKey: "API_BASE_URL") as? String ?? "https://dummyjson.com"
        return URL(string: urlString)!
    }
}
