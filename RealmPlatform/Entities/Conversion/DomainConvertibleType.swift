//
//  DomainConvertibleType.swift
//  RealmPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Foundation

protocol DomainConvertibleType {
    associatedtype DomainType
    
    func asDomain() -> DomainType
}
