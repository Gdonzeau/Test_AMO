//
//  ViewModel.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//

import Foundation

class ViewModel: ObservableObject {
    let callApiService = CallApi()
    
    func search() async {
        do {
            try await callApiService.search(query: "nature")
        } catch {
            print("Error while searching")
        }
    }
}
