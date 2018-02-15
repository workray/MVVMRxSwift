//
//  PostTableViewCell.swift
//  MVVMRxSwift
//
//  Created by Mobdev125 on 2/13/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import UIKit

final class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    func bind(_ viewModel:PostItemViewModel) {
        self.titleLabel.text = viewModel.title
        self.detailsLabel.text = viewModel.subtitle
    }
    
}

