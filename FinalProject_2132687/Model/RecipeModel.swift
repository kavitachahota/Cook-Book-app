//
//  RecipeModel.swift
//  FinalProject_2132687
//
//  Created by english on 2023-04-13.
//

import Foundation

class RecipeModel {
    static var idGenerator: Int = 0

    public var id: Int = 0 // 0 = new recipe

    public var name : String?
    public var ingredients : String?
    public var instructions : String?
    public var imageLink : String!

    // constructor
    init(name: String, ingredients: String, instructions: String, imageLink : String) {
        self.name = name
        self.ingredients = ingredients
        self.instructions = instructions
        self.imageLink = imageLink
    }

    static func getNextId() -> Int {
        idGenerator += 1
        return idGenerator
    }

    static func find(name: String) -> RecipeModel? {
        for recipe in RecipeModelProvider.all {
            if recipe.name!.lowercased() == name.lowercased() {
                return recipe
            }
        }
        return nil
    }
}

