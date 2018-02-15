//
//  Album+Mapping.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import ObjectMapper

extension Album: ImmutableMappable {
    
    // JSON -> Object
    public init(map: Map) throws {
        title = try map.value("title")
        uid = try map.value("id", using: UidTransform())
        userId = try map.value("userId", using: UidTransform())
    }
}
