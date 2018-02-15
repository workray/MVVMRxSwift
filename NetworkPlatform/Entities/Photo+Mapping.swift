//
//  Photo+Mapping.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import ObjectMapper

extension Photo: ImmutableMappable {
    
    // JSON -> Object
    public init(map: Map) throws {
        albumId = try map.value("albumId", using: UidTransform())
        thumbnailUrl = try map.value("thumbnailUrl")
        title = try map.value("title")
        uid = try map.value("id", using: UidTransform())
        url = try map.value("url")
    }
}
