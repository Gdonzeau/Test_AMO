//
//  Photo.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//

import Foundation

// MARK: - Photo
struct Photo: Codable, Identifiable {
    let id: Int
    let width: Int
    let height: Int
    let url: String
    let photographer: String
    let photographerURL: String
    let photographerID: Int
    let avgColor: String
    let src: PhotoSources
    let liked: Bool
    let alt: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case width
        case height
        case url
        case photographer
        case photographerURL = "photographer_url"
        case photographerID = "photographer_id"
        case avgColor = "avg_color"
        case src
        case liked
        case alt
    }
}

// MARK: - Sources d'images
struct PhotoSources: Codable {
    let original: String
    let large2x: String
    let large: String
    let medium: String
    let small: String
    let portrait: String
    let landscape: String
    let tiny: String
}
