//
//  NavigationController.swift
//  Recipes
//
//  Created by Carly on 3/5/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func enableAppearance() {
        navigationBar.tintColor = .white
        navigationBar.barTintColor = UIColor.red
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 17)]
    }
    
}
