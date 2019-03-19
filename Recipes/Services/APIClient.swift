//
//  APIClient.swift
//  Recipes
//
//  Created by Carly on 3/4/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import Foundation
import Alamofire

//recipes will always be nil because we are returning the value before getting the result from the server
class APIClient {
    
    static func getLatestRecipes(completion: @escaping ([Recipe]) -> Void) {
        let url = "https://www.themealdb.com/api/json/v1/1/latest.php"
        
        Alamofire.request(url).responseJSON { response in
            let jsonData = response.data
            
            do{
                // created the json decoder
                let decoder = JSONDecoder()
                
                // decode Meals object
                let meals = try decoder.decode(Meals.self, from: jsonData!)
                
                // grab the array of recipes
                completion(meals.meals)
                
            } catch let err {
                print(err)
            }
        }
    }
    
    static func getRecipeCategories(completion: @escaping ([String]) -> Void) {
        let url = "https://www.themealdb.com/api/json/v1/1/categories.php"
        
        Alamofire.request(url).responseJSON { response in
            let jsonData = response.data
            
            do{
                // created the json decoder
                let decoder = JSONDecoder()
                
                // decode Meals object
                let categories = try decoder.decode([String].self, from: jsonData!)
                
                // grab the array of recipes
                completion(categories)
                
            } catch let err {
                print(err)
            }
        }
    }
}
