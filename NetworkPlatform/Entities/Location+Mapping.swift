//
//  Location+Mapping.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import ObjectMapper

extension Location: ImmutableMappable {
    
    // JSON -> Object
    public init(map: Map) throws {
        longitude = try map.value("longitude")
        latitude = try map.value("latitude")
    }
}
