//
//  MainViewController.swift
//  Recipes
//
//  Created by Carly on 3/4/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var latestRecipes = [Recipe]()
    
    @IBOutlet var tableView: UITableView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        APIClient.getLatestRecipes(completion: { recipes in
            
            self.latestRecipes = recipes
            self.tableView.reloadData()
        })
    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // get a reference to our storyboard cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath as IndexPath) as! TableViewCell
        
        // grab recipe
        let recipe = latestRecipes[indexPath.item]
        
        cell.titleLabel.text = recipe.name
        cell.categoryLabel.text = recipe.category
        cell.originLabel.text = recipe.origin
        cell.tagsLabel.text = recipe.tags
        
        if let url = URL(string: recipe.imageURL) {
            cell.recipeImageView.load(url: url)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller: RecipeDetailViewController = .instantiateFromStoryboard()
        controller.recipe = latestRecipes[indexPath.item]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return latestRecipes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
