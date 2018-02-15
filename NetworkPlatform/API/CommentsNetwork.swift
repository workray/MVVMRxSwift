//
//  CommentsNetwork.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import RxSwift

public final class CommentsNetwork {
    private let network: Network<Comment>
    
    init(network: Network<Comment>) {
        self.network = network
    }
    
    public func fetchComments() -> Observable<[Comment]> {
        return network.getItems("comments")
    }
    
    public func fetchComment(commentId: String) -> Observable<Comment> {
        return network.getItem("comments", itemId: commentId)
    }
}
