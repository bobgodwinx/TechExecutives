//
//  APIClient.swift
//  TechExecutives
//
//  Created by Bob Godwin Obi on 06.06.19.
//  Copyright © 2019 Bob Godwin Obi. All rights reserved.
//

import Foundation

class APIClient {
    /// This just for testin sake
    /// It is not a real APIClient
    
    static let shared: APIClient = {
        /// Do setup if needed
        APIClient()
    }()
    
    static func fetchFakeData() -> [Executive] {
        let path = Bundle.main.path(forResource: "dummy", ofType: "json")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let decoder = JSONDecoder()
        
        let container = try! decoder.decode(ItemContainer.self, from: data)
        return container.items
    }
}
