//
//  TodosNetwork.swift
//  NetworkPlatform
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Domain
import RxSwift

public final class TodosNetwork {
    private let network: Network<Todo>
    
    init(network: Network<Todo>) {
        self.network = network
    }
    
    public func fetchTodos() -> Observable<[Todo]> {
        return network.getItems("todos")
    }
    
    public func fetchTodo(todoId: String) -> Observable<Todo> {
        return network.getItem("todos", itemId: todoId)
    }
}

