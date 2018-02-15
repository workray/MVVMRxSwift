//
//  RMComment.swift
//  RealmPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import QueryKit
import Domain
import RealmSwift
import Realm

final class RMComment: Object {
    
    @objc dynamic var body: String = ""
    @objc dynamic var email: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var postId: String = ""
    @objc dynamic var uid: String = ""
    
    override class func primaryKey() -> String? {
        return "uid"
    }
}

extension RMComment {
    static var body: Attribute<String> { return Attribute("body")}
    static var email: Attribute<String> { return Attribute("email")}
    static var name: Attribute<String> { return Attribute("name")}
    static var postId: Attribute<String> { return Attribute("postId")}
    static var uid: Attribute<String> { return Attribute("uid")}
}

extension RMComment: DomainConvertibleType {
    func asDomain() -> Comment {
        return Comment(body: body,
                       email: email,
                       name: name,
                       postId: postId,
                       uid: uid)
    }
}

extension Comment: RealmRepresentable {
    
    func asRealm() -> RMComment {
        return RMComment.build { object in
            object.body = body
            object.email = email
            object.name = name
            object.uid = uid
            object.postId = postId
        }
    }
}
