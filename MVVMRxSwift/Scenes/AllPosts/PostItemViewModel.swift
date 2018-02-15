//
//  PostItemViewModel.swift
//  MVVMRxSwift
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Foundation
import Domain

final class PostItemViewModel   {
    let title:String
    let subtitle : String
    let post: Post
    init (with post:Post) {
        self.post = post
        self.title = post.title.uppercased()
        self.subtitle = post.body
    }
}

