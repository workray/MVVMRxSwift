//
//  Todo.swift
//  Domain
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Foundation

public struct Todo {
    public let completed: Bool
    public let title: String
    public let uid: String
    public let userId: String
    
    public init(completed: Bool,
                title: String,
                uid: String,
                userId: String) {
        self.completed = completed
        self.title = title
        self.uid = uid
        self.userId = userId
    }
}

extension Todo: Equatable {
    public static func == (lhs: Todo, rhs: Todo) -> Bool {
        return lhs.uid == rhs.uid &&
            lhs.title == rhs.title &&
            lhs.completed == rhs.completed &&
            lhs.userId == rhs.userId
    }
}

