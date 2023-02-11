//
//  Little_Lemon_Dinner_Menu_For_Meta_SwiftUITests.swift
//  Little Lemon Dinner Menu For Meta SwiftUITests
//
//  Created by Oleksandr Smakhtin on 11.02.2023.
//

import XCTest

@testable import Little_Lemon_Dinner_Menu_For_Meta_SwiftUI

final class Little_Lemon_Dinner_Menu_For_Meta_SwiftUITests: XCTestCase {

    //MARK: - Title test
    func test_menuItemTitle_isEquals_initializedItem() {
        // title testing
        let testTitle = "Food 5"
        let item = MenuItem(title: testTitle, ingredient: [Ingredient.Pasta], priceDouble: 0.0, menuCategory: .food, ordersCount: 0)
        
        let title = item.title
        
        XCTAssertEqual(testTitle, title)
    }
    
    //MARK: - Ingredient test
    func test_menuItemIngredient_isEquals_initializedItem() {
        // ingredients testing
        let testIngredients = [Ingredient.Pasta, Ingredient.Spinach, Ingredient.TomatoSauce]
        let item = MenuItem(title: "", ingredient: testIngredients, priceDouble: 0.0, menuCategory: .food, ordersCount: 0)
        
        let ingredients = item.ingredient
        
        XCTAssertEqual(testIngredients, ingredients)
    }

}
