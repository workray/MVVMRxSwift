//
//  RMAddress.swift
//  RealmPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import QueryKit
import RealmSwift
import Realm
import Domain

final class RMAddress: Object {
    
    @objc dynamic var city: String = ""
    @objc dynamic var geo: RMLocation?
    @objc dynamic var street: String = ""
    @objc dynamic var suite: String = ""
    @objc dynamic var zipcode: String = ""
}

extension RMAddress {
    static var city: Attribute<String> { return Attribute("city")}
    static var street: Attribute<String> { return Attribute("street")}
    static var suite: Attribute<String> { return Attribute("suite")}
    static var zipcode: Attribute<String> { return Attribute("zipcode")}
    static var geo: Attribute<RMLocation> { return Attribute("geo")}
}

extension RMAddress: DomainConvertibleType {
    func asDomain() -> Address {
        return Address(city: city,
                       geo: geo!.asDomain(),
                       street: street,
                       suite: suite,
                       zipcode: zipcode)
    }
}

extension Address: RealmRepresentable {
    internal var uid: String {
        return ""
    }
    
    func asRealm() -> RMAddress {
        return RMAddress.build { object in
            object.city = city
            object.geo = geo.asRealm()
            object.street = street
            object.suite = suite
            object.zipcode = zipcode
        }
    }
}

