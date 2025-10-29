//
//  ApiData.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//

import Foundation

struct ApiData {
    static let search: String = "https://api.pexels.com/v1/search?query="
    static let navigationSearch: String = "https://api.pexels.com/v1/search?page="
    
    // Récupération depuis Info.plist
    static let ApiKey: String = {
        guard let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String,
              !apiKey.isEmpty else {
            fatalError("API_KEY manquante dans Info.plist. Vérifiez votre configuration.")
        }
        return apiKey
    }()
}
