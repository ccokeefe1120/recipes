//
//  TableViewCell.swift
//  Recipes
//
//  Created by Carly on 3/4/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var recipeImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var originLabel: UILabel!
    @IBOutlet var tagsLabel: UILabel!
    
    @IBOutlet var tagIconImageView: UIImageView!
    
    override func awakeFromNib() {
        recipeImageView.layer.cornerRadius = 10.0
        recipeImageView.layer.masksToBounds = true
        tagIconImageView.tintColor = UIColor.red
    }
}
