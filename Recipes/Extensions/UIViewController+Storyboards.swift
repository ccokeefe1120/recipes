//
//  UIViewController+Storyboards.swift
//  Recipes
//
//  Created by Carly on 3/5/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import UIKit

public protocol DependencyInjectable {
    func injectDependencies()
}

extension UIViewController {
    
    /// Loads a controller from a storyboard based on it's inferred class name.
    /// Example: `LoginViewController` will load `Login.storyboard` by dropping the `ViewController` suffix.
    ///
    /// - Returns: A newly instantiated view controller
    public static func instantiateFromStoryboard<T: UIViewController>() -> T {
        let storyboard = UIStoryboard(viewControllerType: T.self)
        let controller = storyboard.instantiateInitialViewController() as! T
        
        if let injectable = controller as? DependencyInjectable {
            injectable.injectDependencies()
        }
        
        return controller
    }
    
    /// Loads a controller from a storyboard based on a specified class name
    ///
    /// - Returns: A newly instantiated view controller
    public static func instantiateFromStoryboard<T: UIViewController>(_ controllerType: T.Type) -> T {
        return instantiateFromStoryboard()
    }
}
