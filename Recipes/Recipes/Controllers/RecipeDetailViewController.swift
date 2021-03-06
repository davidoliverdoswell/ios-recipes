//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Lambda-School-Loaner-11 on 8/6/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    var recipe: Recipe? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var recipeName: UILabel!
    
    
    @IBOutlet weak var recipeInstruction: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

    }
    
    func updateViews() {
        if isViewLoaded {
            recipeName.text = recipe?.name
            recipeInstruction.text = recipe?.instructions
        }
    }
}
