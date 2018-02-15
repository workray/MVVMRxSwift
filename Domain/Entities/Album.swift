//
//  Album.swift
//  Domain
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Foundation

public struct Album {
    public let title: String
    public let uid: String
    public let userId: String
    
    public init(title: String,
                uid: String,
                userId: String) {
        self.title = title
        self.uid = uid
        self.userId = userId
    }
}

extension Album: Equatable {
    public static func == (lhs: Album, rhs: Album) -> Bool {
        return lhs.uid == rhs.uid &&
            lhs.title == rhs.title &&
            lhs.userId == rhs.userId
    }
}

