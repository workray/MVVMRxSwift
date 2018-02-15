//
//  Encodable.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

protocol DomainConvertibleType {
    associatedtype DomainType: Identifiable
    
    init(with domain: DomainType)
    
    func asDomain() -> DomainType
}

protocol Identifiable {
    var uid: String { get }
}

typealias DomainConvertibleCoding = DomainConvertibleType

protocol Encodable {
    associatedtype Encoder: DomainConvertibleCoding
    
    var encoder: Encoder { get }
}
