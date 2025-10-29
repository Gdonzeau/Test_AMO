//
//  MockURLProvider.swift
//  Test_AMOTests
//
//  Created by Guillaume on 29/10/2025.
//

import Foundation
@testable import Test_AMO

class MockURLProvider: URLProvider {
    func firstSearch(query: String) -> URL? {
        nil
    }
    
    func navigationSearch(page: Int, perPage: Int, query: String) -> URL? {
        nil
    }
    
    
}
