//
//  PostsUseCase.swift
//  Domain
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Foundation
import RxSwift

public protocol PostsUseCase {
    func posts() -> Observable<[Post]>
    func save(post: Post) -> Observable<Void>
    func delete(post: Post) -> Observable<Void>
}
