//
//  Company+Mapping.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import ObjectMapper

extension Company: ImmutableMappable {
    
    // JSON -> Object
    public init(map: Map) throws {
        bs = try map.value("bs")
        catchPhrase = try map.value("catchPhrase")
        name = try map.value("name")
    }
}
