//
//  PostsNetwork.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import RxSwift

public final class PostsNetwork {
    private let network: Network<Post>
    
    init(network: Network<Post>) {
        self.network = network
    }
    
    public func fetchPosts() -> Observable<[Post]> {
        return network.getItems("posts")
    }
    
    public func fetchPost(postId: String) -> Observable<Post> {
        return network.getItem("posts", itemId: postId)
    }
    
    public func createPost(post: Post) -> Observable<Post> {
        return network.postItem("posts", parameters: post.toJSON())
    }
    
    public func deletePost(postId: String) -> Observable<Post> {
        return network.deleteItem("posts", itemId: postId)
    }
}

