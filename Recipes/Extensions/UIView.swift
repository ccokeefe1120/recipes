//
//  UIView.swift
//  Recipes
//
//  Created by Carly on 3/6/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import UIKit

extension UIView {
    
    /// Enables configuring the corner radius of the view's layer within Interface Builder
    @IBInspectable public var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }
    
    /// Enables configuring the border width of the view's layer within Interface Builder
    @IBInspectable public var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    /// Enables configuring the border color of the view's layer within Interface Builder
    @IBInspectable public var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            } else {
                return nil
            }
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
