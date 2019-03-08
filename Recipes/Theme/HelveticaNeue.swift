//
//  HelveticaNeue.swift
//  Recipes
//
//  Created by Carly on 3/6/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import UIKit

struct HelveticaNeue {
    
    /// Returns a custom regular font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a regular
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func regular(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue", size: size, weight: UIFont.Weight.regular.rawValue)
    }
    
    /// Returns a custom ultra light font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a ultra light
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func ultraLight(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-UltraLight", size: size, weight: UIFont.Weight.ultraLight.rawValue)
    }
    
    /// Returns a custom thin font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a thin
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func thin(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-Thin_0", size: size, weight: UIFont.Weight.thin.rawValue)
    }
    
    /// Returns a custom light font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a light
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func light(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-Light", size: size, weight: UIFont.Weight.light.rawValue)
    }
    
    /// Returns a custom medium font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a medium
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func medium(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-Medium", size: size, weight: UIFont.Weight.medium.rawValue)
    }
    
    /// Returns a custom bold font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a bold
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func bold(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-Bold", size: size, weight: UIFont.Weight.bold.rawValue)
    }
    
    /// Returns a custom demi font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a semibold
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func demi(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-Demi", size: size, weight: UIFont.Weight.semibold.rawValue)
    }
    
    /// Returns a custom heavy font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a heavy
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func heavy(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-Heavy", size: size, weight: UIFont.Weight.heavy.rawValue)
    }
    
    /// Returns a custom ultra light italic font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a ultra light
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func ultraLightItalic(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-UltraLightIt", size: size, weight: UIFont.Weight.ultraLight.rawValue)
    }
    
    /// Returns a custom thin italic font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a thin
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func thinItalic(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-ThinItalic", size: size, weight: UIFont.Weight.thin.rawValue)
    }
    
    /// Returns a custom light italic font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a light
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func lightItalic(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-LightItalic", size: size, weight: UIFont.Weight.light.rawValue)
    }
    
    /// Returns a custom medium italic font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a medium
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func mediumItalic(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-MediumItalic", size: size, weight: UIFont.Weight.medium.rawValue)
    }
    
    /// Returns a custom bold italic font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a bold
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func boldItalic(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-BoldItalic", size: size, weight: UIFont.Weight.bold.rawValue)
    }
    
    /// Returns a custom demi italic font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a semibold
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func demiItalic(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-DemiItalic", size: size, weight: UIFont.Weight.semibold.rawValue)
    }
    
    /// Returns a custom heavy italic font of the requested size. If the font
    /// cannot be loaded the system font of the requested size with a heavy
    /// weight will be returned instead.
    ///
    /// - Parameter size: The size of the font being requested
    ///
    /// - Returns: UIFont
    static func heavyItalic(size: CGFloat) -> UIFont {
        return HelveticaNeue.font(name: "HelveticaNeue-HeavyItalic", size: size, weight: UIFont.Weight.heavy.rawValue)
    }
    
    /// Returns a font of the requested name, size and weight. If the font
    /// cannot be loaded the system font of the requested size and weight
    /// will be returned instead.
    ///
    /// - Parameters:
    ///     - size: The size of the font being requested
    ///     - name: The name of the font being requested
    ///     - weight: The weight of the font being requested
    ///
    /// - Returns: UIFont
    static func font(name: String, size: CGFloat, weight: CGFloat) -> UIFont {
        return UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size, weight: UIFont.Weight(rawValue: weight))
    }
    
    /// Returns an italicized font of the requested name, size and weight. If the font
    /// cannot be loaded the system font of the requested size and weight in italics
    /// will be returned instead.
    ///
    /// - Parameters:
    ///     - size: The size of the font being requested
    ///     - name: The name of the font being requested
    ///     - weight: The weight of the font being requested
    ///
    /// - Returns: UIFont
    static func italics(name: String, size: CGFloat, weight: CGFloat) -> UIFont {
        guard let customFont = UIFont(name: name, size: size) else {
            var systemFont = UIFont.systemFont(ofSize: size, weight: UIFont.Weight(rawValue: weight))
            if let dsc = systemFont.fontDescriptor.withSymbolicTraits(.traitItalic) {
                systemFont = UIFont(descriptor: dsc, size: 0)
            }
            return systemFont
        }
        
        return customFont
    }
}
