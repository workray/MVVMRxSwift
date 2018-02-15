//
//  Address+Mapping.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import ObjectMapper

extension Address: ImmutableMappable {
    
    // JSON -> Object
    public init(map: Map) throws {
        city = try map.value("city")
        geo = try map.value("geo")
        street = try map.value("street")
        suite = try map.value("suite")
        zipcode = try map.value("zipcode")
    }
}
