//
//  User+Mapping.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import ObjectMapper

extension User: ImmutableMappable {
    
    // JSON -> Object
    public init(map: Map) throws {
        address = try map.value("address")
        company = try map.value("company")
        email = try map.value("email")
        name = try map.value("name")
        phone = try map.value("phone")
        uid = try map.value("id", using: UidTransform())
        username = try map.value("username")
        website = try map.value("website")
    }
}
