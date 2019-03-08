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
    
//    static func getLatestRecipes() -> [Recipe]? {
//        let url = "https://www.themealdb.com/api/json/v1/1/latest.php"
//
//        var recipes = [Recipe]() // 1
//
//        Alamofire.request(url).responseJSON { response in // 2
//            let jsonData = response.data
//
//            do{
//                // created the json decoder
//                let decoder = JSONDecoder()
//
//                // decode Meals object
//                let meals = try decoder.decode(Meals.self, from: jsonData!)
//
//                // grab the array of recipes
//                recipes = meals.meals // 4
//
//            } catch let err {
//                print(err)
//            }
//        }
//
//        return recipes // 3
//    }
    
    static func getLatestRecipes(completion: @escaping ([Recipe]) -> Void) {
        let url = "https://www.themealdb.com/api/json/v1/1/latest.php"
        
        Alamofire.request(url).responseJSON { response in // 2
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
}
