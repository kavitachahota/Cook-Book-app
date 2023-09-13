//
//  RecipeViewController.swift
//  FinalProject_2132687
//
//  Created by english on 2023-04-13.
//

import UIKit

class RecipeViewController: UIViewController {
    
    var selectedRecipe : Int!
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    @IBOutlet weak var recipeTitle: UILabel!
    
    @IBOutlet weak var txtIngredients: UITextView!
    
    @IBOutlet weak var txtInstructions: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeImage.fetchUImageFromURL(url: URL(string: RecipeModelProvider.all[selectedRecipe].imageLink)!)
        recipeTitle.text = RecipeModelProvider.all[selectedRecipe].name
        txtIngredients.text = RecipeModelProvider.all[selectedRecipe].ingredients
        txtInstructions.text = RecipeModelProvider.all[selectedRecipe].instructions

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
