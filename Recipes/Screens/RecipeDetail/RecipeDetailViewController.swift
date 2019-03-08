//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Carly on 3/5/19.
//  Copyright © 2019 Carly. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var tagIconImageView: UIImageView!
    @IBOutlet private weak var instructionsLabel: UILabel!
    @IBOutlet private weak var tagsLabel: UILabel!
    @IBOutlet private weak var ingredientsStackView: UIStackView!
    
    var recipe: Recipe? {
        didSet {
            loadViewIfNeeded()
            if let recipe = recipe {
                setup(recipe)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        tagIconImageView.tintColor = UIColor.red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setup(_ recipe: Recipe)  {
        // add image to imageView
        if let url = URL(string: recipe.imageURL) {
            imageView.load(url: url)
        }
        
        addIngredients(recipe: recipe)
        tagsLabel.text = recipe.tags
        
        instructionsLabel.text = recipe.instructions
    }
    
    private func makeLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = HelveticaNeue.regular(size: 14)
        return label
    }
    
    private func addIngredients(recipe: Recipe) {
        // TODO: Find a more efficient way to do this
        if !(recipe.ingredientName1.isEmpty && recipe.ingredientMeasurement1.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement1) \(recipe.ingredientName1)"))
        }
        
        if !(recipe.ingredientName2.isEmpty && recipe.ingredientMeasurement2.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement2) \(recipe.ingredientName2)"))
        }
        
        if !(recipe.ingredientName3.isEmpty && recipe.ingredientMeasurement3.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement3) \(recipe.ingredientName3)"))
        }
        
        if !(recipe.ingredientName4.isEmpty && recipe.ingredientMeasurement4.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement4) \(recipe.ingredientName4)"))
        }
        
        if !(recipe.ingredientName5.isEmpty && recipe.ingredientMeasurement5.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement5) \(recipe.ingredientName5)"))
        }
        
        if !(recipe.ingredientName6.isEmpty && recipe.ingredientMeasurement6.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement6) \(recipe.ingredientName6)"))
        }
        
        if !(recipe.ingredientName7.isEmpty && recipe.ingredientMeasurement7.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement7) \(recipe.ingredientName7)"))
        }
        
        if !(recipe.ingredientName8.isEmpty && recipe.ingredientMeasurement8.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement8) \(recipe.ingredientName8)"))
        }
        
        if !(recipe.ingredientName9.isEmpty && recipe.ingredientMeasurement9.isEmpty) {
            ingredientsStackView.addArrangedSubview(makeLabel(text: "\(recipe.ingredientMeasurement9) \(recipe.ingredientName9)"))
        }
    }
    
}
