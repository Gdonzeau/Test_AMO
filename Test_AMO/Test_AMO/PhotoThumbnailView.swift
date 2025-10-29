//
//  PhotoThumbnailView.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//

import SwiftUI

// MARK: - Vue de miniature d'image
struct PhotoThumbnailView: View {
    let photo: Photo
    
    var body: some View {
        AsyncImage(url: URL(string: photo.src.medium)) { phase in
            switch phase {
            case .empty:
                // État de chargement
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.2))
                    .overlay(
                        ProgressView()
                    )
                    .frame(height: 200)
                
            case .success(let image):
                // Image chargée avec succès
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
                    .cornerRadius(8)
                
            case .failure:
                // Erreur de chargement
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.red.opacity(0.2))
                    .overlay(
                        VStack {
                            Image(systemName: "photo.fill")
                                .foregroundColor(.gray)
                            Text("Erreur")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    )
                    .frame(height: 200)
                
            @unknown default:
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 200)
            }
        }
    }
}
