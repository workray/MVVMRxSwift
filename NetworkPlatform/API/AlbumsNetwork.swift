//
//  AlbumsNetwork.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import RxSwift

public final class AlbumsNetwork {
    private let network: Network<Album>
    
    init(network: Network<Album>) {
        self.network = network
    }
    
    public func fetchAlbums() -> Observable<[Album]> {
        return network.getItems("albums")
    }
    
    public func fetchAlbum(albumId: String) -> Observable<Album> {
        return network.getItem("albums", itemId: albumId)
    }
}
