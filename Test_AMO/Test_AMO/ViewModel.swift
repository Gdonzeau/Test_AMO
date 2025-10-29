//
//  ViewModel.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//

import Foundation

class ViewModel: ObservableObject {
    let callApiService = CallApi()
    @Published var isSearching = false
    @Published var photos: [Photo] = []
    
    func search(query: String = "nature") async {
        do {
            try await callApiService.search(query: query)
            //photos = self.callApiService.photos
        } catch {
            print("Error while searching")
        }
//        DispatchQueue.main.async { [self] in
//            photos = self.callApiService.photos
//        }
    }
}
