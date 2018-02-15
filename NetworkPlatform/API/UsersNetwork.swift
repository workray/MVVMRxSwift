//
//  UsersNetwork.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import RxSwift

public final class UsersNetwork {
    private let network: Network<User>
    
    init(network: Network<User>) {
        self.network = network
    }
    
    public func fetchUsers() -> Observable<[User]> {
        return network.getItems("users")
    }
    
    public func fetchUser(userId: String) -> Observable<User> {
        return network.getItem("users", itemId: userId)
    }
}
