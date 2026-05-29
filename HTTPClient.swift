//
//  HTTPClient.swift
//  RetailCatalogNetworkApp
//
//  Created by Julian Urrutia on 29/05/26.
//

public protocol HTTPClient {
    func request<T: Decodable>(urlString: String) async throws -> T
}
