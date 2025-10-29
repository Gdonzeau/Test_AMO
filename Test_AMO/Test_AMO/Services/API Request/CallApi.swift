//
//  CallApi.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//

import Foundation

class CallApi: ObservableObject {
    
    private var networkSession: NetworkInterface
    private var urlProvider: URLProvider
    
    var response: String = ""
    var isError: Bool = false
    var error: NetworkErrors?
    
    @Published var photos: [Photo] = []
    
    init(urlProvider: URLProvider = DefaultURLProvider(),
         networkSession: NetworkInterface = NetworkSession()) {
        
        self.urlProvider = urlProvider
        self.networkSession = networkSession
    }
    
    func search(query: String) async throws {
        print("01")
        guard let url = urlProvider.firstSearch(query: query) else {
            print("01b")
            self.error = .invalidURL
            self.isError = true
            throw NetworkErrors.invalidURL
        }
        print("02")
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue(ApiData.ApiKey, forHTTPHeaderField: "Authorization")
        
        var responseData: Data
        
        do {
            print("03")
            responseData = try await networkSession.fetchData(request: request)
        } catch {
            print("04")
            if let networkError = error as? NetworkErrors {
                print("04a")
                self.error = networkError
                self.isError = true
                throw networkError
            } else {
                print("04b")
                self.error = .errorGenerated
                self.isError = true
                throw NetworkErrors.errorGenerated
            }
        }
        
        do {
            print("05")
            let pexelsResponse = try JSONDecoder().decode(PexelsResponse.self, from: responseData)
            
            await MainActor.run {
                self.photos = pexelsResponse.photos
                print("Photos : \(pexelsResponse.photos.count) photos chargées")
            }
        } catch {
            print("05b")
            self.error = NetworkErrors.decodingError
            let errorText = NetworkErrors.decodingError.errorDescription ?? "Unknown error"
            self.isError = true
            throw NetworkErrors.decodingError
        }
    }
}
