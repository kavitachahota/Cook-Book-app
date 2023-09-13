//
//  CookBookViewController.swift
//  FinalProject_2132687
//
//  Created by english on 2023-04-13.
//

import UIKit

class CookBookViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    public var loggedUser : UserModel?
    private var selectedUser : UserModel?
    private var selectedRecipe : Int?
    
   
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RecipeModelProvider.mockData()
        
        tableview.delegate = self // actions
        tableview.dataSource = self // data

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = RecipeModelProvider.all[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RecipeModelProvider.all.count // getting number of elements in array
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedRecipe = indexPath.row
        print(indexPath.row)

        performSegue(withIdentifier: Segue.toRecipeViewController, sender: nil)
    }
     
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?){
        if segue.identifier == Segue.toRecipeViewController{
            let recipeViewController = segue.destination as! RecipeViewController

            recipeViewController.selectedRecipe = self.selectedRecipe
        }

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
