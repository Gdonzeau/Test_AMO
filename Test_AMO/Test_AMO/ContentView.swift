//
//  ContentView.swift
//  Test_AMO
//
//  Created by Guillaume on 28/10/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
            
            if !viewModel.isSearching {
                Button {
                    Task {
                        await viewModel.search(query: searchText)
                    }
                } label: {
                    Text("Search")
                }
            } else {
                ProgressView()
            }
            
            ScrollView {
                ForEach(viewModel.photos) { photo in
//                    if let imageURL = URL(string: photo.src.tiny) {
//                        AsyncImage(url: imageURL)
//                    } else {
//                        Text("Loading...")
//                    }
                    ForEach(viewModel.photos) { photo in
                        PhotoThumbnailView(photo: photo)
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
