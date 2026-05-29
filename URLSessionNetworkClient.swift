//
//  URLSessionNetworkClient.swift
//  RetailCatalogNetworkApp
//
//  Created by Julian Urrutia on 29/05/26.
//

import Foundation

public class URLSessionNetworkClient: HTTPClient {
    
    public init() {}
    
    public func request<T: Decodable>(urlString: String) async throws -> T {
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw URLError(.badServerResponse)
        }
        
        return try JSONDecoder().decode(T.self, from: data)
    }
}
