//
//  FakeResponseData.swift
//  Test_AMO
//
//  Created by Guillaume on 29/10/2025.
//

import Foundation

class FakeResponseData {
    
    static let responseOk = HTTPURLResponse(url: URL(string: "https://www.adresse.com")!, // Answer send 200 Status, all's OK
                                            statusCode: 200,
                                            httpVersion: nil,
                                            headerFields: nil)!
    
    static let responseKo = HTTPURLResponse(url: URL(string: "https://www.adresse.com")!, // Answer send not 200 status. Error
                                            statusCode: 500,
                                            httpVersion: nil,
                                            headerFields: nil)!
    
    static var NewsCorrectData: Data { // Data are correct and contain information
        let bundle = Bundle(for: FakeResponseData.self)
        let url = bundle.url(forResource: "DataResponse", withExtension: "json")!
        let data = try! Data(contentsOf: url) // URL unwrapped as there is a file.
        return data
    }
    
    static let NewsIncorrectData = "Bad data".data(using: .utf8)!
    
}
