//
//  MenuItemDetailsView.swift
//  Little Lemon Dinner Menu For Meta SwiftUI
//
//  Created by Oleksandr Smakhtin on 11.02.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    var itemDetails: MenuItem
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .padding([.leading, .trailing], 100)
                Text("Price:")
                    .font(Font.title2)
                    .bold()
                Text(String(format: "%.02f", itemDetails.priceDouble))
                Text("Ordered:")
                    .font(Font.title2)
                    .bold()
                    .padding(.top)
                Text("\(itemDetails.ordersCount)")
                Text("Ingredients:")
                    .font(Font.title2)
                    .bold()
                    .padding(.top)
                ForEach((0..<itemDetails.ingredient.count)) { n in
                    Text("\(itemDetails.ingredient[n].rawValue)")
                }
                
            }
            .navigationTitle(itemDetails.title)
        }
        
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(itemDetails: MenuItem(title: "Food 5", ingredient: [Ingredient.Broccoli, Ingredient.Spinach, Ingredient.Pasta], priceDouble: 15.99, menuCategory: MenuCategory.food, ordersCount: 5))
    }
}
