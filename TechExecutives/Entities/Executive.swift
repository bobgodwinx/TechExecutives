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
}
