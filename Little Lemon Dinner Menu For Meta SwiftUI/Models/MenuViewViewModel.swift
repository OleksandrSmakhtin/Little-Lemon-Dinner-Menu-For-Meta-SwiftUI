//
//  MenuViewViewModel.swift
//  Little Lemon Dinner Menu For Meta SwiftUI
//
//  Created by Oleksandr Smakhtin on 11.02.2023.
//

import Foundation


class MenuViewViewModel {
    //MARK: - Singleton
    static let shared = MenuViewViewModel()
    
    
    var foodMenuItems = [MenuItem]()
    var drinkMenuItems = [MenuItem]()
    var dessertMenuItems = [MenuItem]()
    
    
    //MARK: - Food Items Randomizer
    func getFoodItems() -> [MenuItem] {
        var array = [MenuItem]()
        
        for index in 1...12 {
            // ingredience randomizer
            var ingredients = [Ingredient]()
            let randomAmoutOfEngredients = Int.random(in: 1...4)
            for index in 1...randomAmoutOfEngredients {
                guard let randomIngradient = Ingredient.allCases.randomElement() else { continue }
                ingredients.append(randomIngradient)
            }
            
            // price randomizer
            let price = Double.random(in: 1...10).rounded()
            // orders count randomizer
            let count = Int.random(in: 1...10)
            
            let item = MenuItem(title: "Food \(index)", ingredient: ingredients, priceDouble: price, menuCategory: .food, ordersCount: count)
            
            array.append(item)
        }
        print(array.count)
        return array
    }
    
    //MARK: - Drink Items Randomizer
    func getDrinkItems() -> [MenuItem] {
        
        var array = [MenuItem]()
        
        for index in 1...8 {
            // ingredience randomizer
            var ingredients = [Ingredient]()
            let randomAmoutOfEngredients = Int.random(in: 1...4)
            for index in 1...randomAmoutOfEngredients {
                guard let randomIngradient = Ingredient.allCases.randomElement() else { continue }
                ingredients.append(randomIngradient)
            }
            
            // price randomizer
            let price = Double.random(in: 1...10).rounded()
            // orders count randomizer
            let count = Int.random(in: 1...10)
            
            let item = MenuItem(title: "Drink \(index)", ingredient: ingredients, priceDouble: price, menuCategory: .drink, ordersCount: count)
            
            array.append(item)
        }
        
        return array
    }
    
    //MARK: - Dessert Items Randomizer
    func getDessertItems() -> [MenuItem] {
        
        var array = [MenuItem]()
        
        for index in 1...4 {
            // ingredience randomizer
            var ingredients = [Ingredient]()
            let randomAmoutOfEngredients = Int.random(in: 1...4)
            for index in 1...randomAmoutOfEngredients {
                guard let randomIngradient = Ingredient.allCases.randomElement() else { continue }
                ingredients.append(randomIngradient)
            }
            
            // price randomizer
            let price = Double.random(in: 1...10).rounded()
            // orders count randomizer
            let count = Int.random(in: 1...10)
            
            let item = MenuItem(title: "Dessert \(index)", ingredient: ingredients, priceDouble: price, menuCategory: .dessert, ordersCount: count)
            
            array.append(item)
        }
        
        return array
    }
    
}
