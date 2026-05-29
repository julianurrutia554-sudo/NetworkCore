//
//  RequestInterceptor.swift
//  RetailCatalogNetworkApp
//
//  Created by Julian Urrutia on 29/05/26.
//

import Foundation

public protocol RequestInterceptor {
    func intercept(_ request: inout URLRequest)
}
