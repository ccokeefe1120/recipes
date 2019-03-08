//
//  Recipe.swift
//  Recipes
//
//  Created by Carly on 3/4/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import Foundation
import UIKit

struct Recipe: Codable {
    
    var id: String
    var name: String
    var category: String
    var origin: String
    var instructions: String
    var imageURL: String
    var tags: String
    var ingredientName1: String
    var ingredientMeasurement1: String
    var ingredientName2: String
    var ingredientMeasurement2: String
    var ingredientName3: String
    var ingredientMeasurement3: String
    var ingredientName4: String
    var ingredientMeasurement4: String
    var ingredientName5: String
    var ingredientMeasurement5: String
    var ingredientName6: String
    var ingredientMeasurement6: String
    var ingredientName7: String
    var ingredientMeasurement7: String
    var ingredientName8: String
    var ingredientMeasurement8: String
    var ingredientName9: String
    var ingredientMeasurement9: String
    
    internal enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case category = "strCategory"
        case origin = "strArea"
        case instructions = "strInstructions"
        case imageURL = "strMealThumb"
        case tags = "strTags"
        case ingredientName1 = "strIngredient1"
        case ingredientMeasurement1 = "strMeasure1"
        case ingredientName2 = "strIngredient2"
        case ingredientMeasurement2 = "strMeasure2"
        case ingredientName3 = "strIngredient3"
        case ingredientMeasurement3 = "strMeasure3"
        case ingredientName4 = "strIngredient4"
        case ingredientMeasurement4 = "strMeasure4"
        case ingredientName5 = "strIngredient5"
        case ingredientMeasurement5 = "strMeasure5"
        case ingredientName6 = "strIngredient6"
        case ingredientMeasurement6 = "strMeasure6"
        case ingredientName7 = "strIngredient7"
        case ingredientMeasurement7 = "strMeasure7"
        case ingredientName8 = "strIngredient8"
        case ingredientMeasurement8 = "strMeasure8"
        case ingredientName9 = "strIngredient9"
        case ingredientMeasurement9 = "strMeasure9"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        category = try container.decode(String.self, forKey: .category)
        origin = try container.decode(String.self, forKey: .origin)
        instructions = try container.decode(String.self, forKey: .instructions)
        imageURL = try container.decode(String.self, forKey: .imageURL)
        tags = try container.decode(String.self, forKey: .tags)
        ingredientName1 = try container.decode(String.self, forKey: .ingredientName1)
        ingredientMeasurement1 = try container.decode(String.self, forKey: .ingredientMeasurement1)
        ingredientName2 = try container.decode(String.self, forKey: .ingredientName2)
        ingredientMeasurement2 = try container.decode(String.self, forKey: .ingredientMeasurement2)
        ingredientName3 = try container.decode(String.self, forKey: .ingredientName3)
        ingredientMeasurement3 = try container.decode(String.self, forKey: .ingredientMeasurement3)
        ingredientName4 = try container.decode(String.self, forKey: .ingredientName4)
        ingredientMeasurement4 = try container.decode(String.self, forKey: .ingredientMeasurement4)
        ingredientName5 = try container.decode(String.self, forKey: .ingredientName5)
        ingredientMeasurement5 = try container.decode(String.self, forKey: .ingredientMeasurement5)
        ingredientName6 = try container.decode(String.self, forKey: .ingredientName6)
        ingredientMeasurement6 = try container.decode(String.self, forKey: .ingredientMeasurement6)
        ingredientName7 = try container.decode(String.self, forKey: .ingredientName7)
        ingredientMeasurement7 = try container.decode(String.self, forKey: .ingredientMeasurement7)
        ingredientName8 = try container.decode(String.self, forKey: .ingredientName8)
        ingredientMeasurement8 = try container.decode(String.self, forKey: .ingredientMeasurement8)
        ingredientName9 = try container.decode(String.self, forKey: .ingredientName9)
        ingredientMeasurement9 = try container.decode(String.self, forKey: .ingredientMeasurement9)
    }
    
    func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(category, forKey: .category)
        try container.encode(origin, forKey: .origin)
        try container.encode(instructions, forKey: .instructions)
        try container.encode(imageURL, forKey: .imageURL)
        try container.encode(tags, forKey: .tags)
        try container.encode(ingredientName1, forKey: .ingredientName1)
        try container.encode(ingredientMeasurement1, forKey: .ingredientMeasurement1)
        try container.encode(ingredientName2, forKey: .ingredientName2)
        try container.encode(ingredientMeasurement2, forKey: .ingredientMeasurement2)
        try container.encode(ingredientName3, forKey: .ingredientName3)
        try container.encode(ingredientMeasurement3, forKey: .ingredientMeasurement3)
        try container.encode(ingredientName4, forKey: .ingredientName4)
        try container.encode(ingredientMeasurement4, forKey: .ingredientMeasurement4)
        try container.encode(ingredientName5, forKey: .ingredientName5)
        try container.encode(ingredientMeasurement5, forKey: .ingredientMeasurement5)
        try container.encode(ingredientName6, forKey: .ingredientName6)
        try container.encode(ingredientMeasurement6, forKey: .ingredientMeasurement6)
        try container.encode(ingredientName7, forKey: .ingredientName7)
        try container.encode(ingredientMeasurement7, forKey: .ingredientMeasurement7)
        try container.encode(ingredientName8, forKey: .ingredientName8)
        try container.encode(ingredientMeasurement8, forKey: .ingredientMeasurement8)
        try container.encode(ingredientName9, forKey: .ingredientName9)
        try container.encode(ingredientMeasurement9, forKey: .ingredientMeasurement9)
    }
}

struct Meals: Codable {
    
    let meals: [Recipe]
    
    internal enum CodingKeys: String, CodingKey {
        case meals
    }
}
