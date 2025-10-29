//
//  NetworkInterface.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//


import Foundation

protocol NetworkInterface {
    func fetchData(request: URLRequest) async throws -> Data
}

class NetworkSession : NetworkInterface {
    
    private var urlSession: URLSession
    
    init(urlSession: URLSession = URLSession(configuration: .default)) {
        self.urlSession = urlSession
    }
    
    func fetchData(request: URLRequest) async throws -> Data {
        let (data, response) = try await urlSession.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw NetworkErrors.invalidStatusCode
        }
        
        return data
    }
}
