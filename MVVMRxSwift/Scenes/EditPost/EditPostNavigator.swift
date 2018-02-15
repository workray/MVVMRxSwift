//
//  EditPostNavigator.swift
//  MVVMRxSwift
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import Foundation
import UIKit
import Domain

protocol EditPostNavigator {
    func toPosts()
}

final class DefaultEditPostNavigator: EditPostNavigator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func toPosts() {
        navigationController.popViewController(animated: true)
    }
}

