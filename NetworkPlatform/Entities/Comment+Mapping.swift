//
//  Comment+Mapping.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import UIKit

import Domain
import ObjectMapper

extension Comment: ImmutableMappable {
    
    // JSON -> Object
    public init(map: Map) throws {
        body = try map.value("body")
        email = try map.value("email")
        name = try map.value("name")
        postId = try map.value("postId", using: UidTransform())
        uid = try map.value("id", using: UidTransform())
    }
}

