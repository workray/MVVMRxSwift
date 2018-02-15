//
//  Comment.swift
//  Domain
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Foundation

public struct Comment {
    public let body: String
    public let email: String
    public let name: String
    public let postId: String
    public let uid: String
    
    public init(body: String,
                email: String,
                name: String,
                postId: String,
                uid: String) {
        self.body = body
        self.email = email
        self.name = name
        self.postId = postId
        self.uid = uid
    }
}

extension Comment: Equatable {
    public static func == (lhs: Comment, rhs: Comment) -> Bool {
        return lhs.uid == rhs.uid &&
            lhs.name == rhs.name &&
            lhs.body == rhs.body &&
            lhs.postId == rhs.postId &&
            lhs.email == rhs.email
    }
}
