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
    let shortDescription: String
    let description: String
    fileprivate let imageId: Int
    
    fileprivate enum Append {
        static let thumbnailSuffix: String = "s"
        static let imageSuffix: String = "x"
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        firstName = (try container.decode(String.self, forKey: .firstName))
        lastName = (try container.decode(String.self, forKey: .lastName))
        imageId = (try container.decode(Int.self, forKey: .imageId))
        shortDescription = (try container.decode(String.self, forKey: .shortDescription))
        description = (try container.decode(String.self, forKey: .description))
    }
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case imageId = "image_id"
        case shortDescription = "short_desc"
        case description = "detail_desc"
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.firstName)
        hasher.combine(self.lastName)
        hasher.combine(self.imageId)
        hasher.combine(self.description)
    }
}

extension Executive {
    var name: String {
        "\(firstName) \(lastName)"
    }
    
    var thumbnailPath: String {
        String(imageId).withSuffix(Append.thumbnailSuffix)
    }
    
    var imagePath: String {
        String(imageId).withSuffix(Append.imageSuffix)
    }
}

extension String {
    func withSuffix(_ suffix: String) -> String {
        if self.hasSuffix(suffix) { return self }
        return "\(self)\(suffix)"
    }
}


#if DEBUG
extension Executive {
    init(_ firstName: String = "Bob",
         _ lastName: String = "Godwin",
         _ shortDescription: String = "Senior iOS Engineer",
         _ description: String = "CEO Tesla Inc.",
         _ imageId: Int = 1) {
        self.firstName = firstName
        self.lastName = lastName
        self.description = description
        self.shortDescription = shortDescription
        self.imageId = imageId
    }
}
#endif
