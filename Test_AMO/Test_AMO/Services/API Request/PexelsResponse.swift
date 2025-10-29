//
//  PexelsResponse.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//

import Foundation

struct PexelsResponse: Codable {
    let page: Int
    let perPage: Int
    let photos: [Photo]
    let totalResults: Int
    let nextPage: String?
    let prevPage: String?
    
    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case photos
        case totalResults = "total_results"
        case nextPage = "next_page"
        case prevPage = "prev_page"
    }
}
