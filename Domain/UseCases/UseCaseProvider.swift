//
//  UseCaseProvider.swift
//  Domain
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Foundation

public protocol UseCaseProvider {
    func makePostsUseCase() -> PostsUseCase
}
