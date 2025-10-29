//
//  URLProvider.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//


import Foundation

protocol URLProvider {
    func firstSearch(query: String) -> URL?
    func navigationSearch(page: Int, perPage: Int, query: String) -> URL?
}

class DefaultURLProvider: URLProvider {
    func firstSearch(query: String) -> URL? {
        return URL(string: ApiData.search + query)
    }
    
    func navigationSearch(page: Int, perPage: Int, query: String) -> URL? {
        return URL(string: ApiData.navigationSearch + "\(page)" + "&per_page=\(perPage)" + "&query=\(query)")
    }
    
    func navigationSearch2(page: Int, perPage: Int, query: String) -> URL? {
        return URL(string: ApiData.navigationSearch + "\(page)" + "&per_page=\(perPage)" + "&query=\(query)")
    }
    
}
