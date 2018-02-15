//
//  PhotosNetwork.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import RxSwift

public final class PhotosNetwork {
    private let network: Network<Photo>
    
    init(network: Network<Photo>) {
        self.network = network
    }
    
    public func fetchPhotos() -> Observable<[Photo]> {
        return network.getItems("photos")
    }
    
    public func fetchPhoto(photoId: String) -> Observable<Photo> {
        return network.getItem("photos", itemId: photoId)
    }
}
