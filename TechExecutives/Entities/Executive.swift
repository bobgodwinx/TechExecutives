//
//  Executive.swift
//  TechExecutives
//
//  Created by Bob Godwin Obi on 05.06.19.
//  Copyright © 2019 Bob Godwin Obi. All rights reserved.
//

import Foundation

struct Executive: Decodable, Hashable {
    let firstName: String
    let lastName: String
    let description: String
    private let imageId: Int
    
    fileprivate enum Append {
        static let thumbnailSuffix: String = "s"
        static let imageSuffix: String = "x"
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        firstName = (try container.decode(String.self, forKey: .firstName))
        lastName = (try container.decode(String.self, forKey: .lastName))
        imageId = (try container.decode(Int.self, forKey: .imageId))
        description = (try container.decode(String.self, forKey: .description))
    }
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case imageId = "image_id"
        case description = "detail_desc"
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.firstName)
        hasher.combine(self.lastName)
        hasher.combine(self.imageId)
        hasher.combine(self.description)
    }
}
