//
//  ContentView.swift
//  Test_AMO
//
//  Created by Guillaume on 28/10/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button {
                Task {
                    await viewModel.search()
                }
            } label: {
                Text("Search")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
