//
//  NetworkError.swift
//  RetailCatalogNetworkApp
//
//  Created by Julian Urrutia on 29/05/26.
//

public enum NetworkError: Error {
    case badURL
    case unauthorized
    case notFound
    case serverError
    case decodingError(Error)
    case unknown(Int)
    
    public var localizedDescription: String {
        switch self {
        case .badURL: return "La URL proporcionada no es válida."
        case .unauthorized: return "Sesión expirada o no autorizada."
        case .notFound: return "El recurso solicitado no fue encontrado."
        case .serverError: return "Error en el servidor. Inténtalo más tarde."
        case .decodingError(let error): return "Error al procesar los datos del servidor: \(error.localizedDescription)"
        case .unknown(let code): return "Ocurrió un error inesperado (Código: \(code))."
        }
    }
}
