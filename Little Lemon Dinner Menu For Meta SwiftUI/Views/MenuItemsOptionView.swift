//
//  MenuItemsOptionView.swift
//  Little Lemon Dinner Menu For Meta SwiftUI
//
//  Created by Oleksandr Smakhtin on 11.02.2023.
//

import SwiftUI

//MARK: - Enum for sections
enum FilterSections: String {
    case selectedSections = "SELECTED CATEGORIES"
    case sortBy = "SORT BY"
}

//MARK: - Enum for filter's titles
enum FilterTitles: String {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case az = "A-Z"
}


struct MenuItemsOptionView: View {
    
    //MARK: - Set dismiss
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            List {
                //MARK: - SELECTED CATEGORIES Section
                Section(FilterSections.selectedSections.rawValue) {
                    // elements
                    Button {
                        print("Food filter pressed")
                    } label: {
                        Text(MenuCategory.food.rawValue)
                            .foregroundColor(Color(uiColor: UIColor.label))
                    }
                    Button {
                        print("Drink filter pressed")
                    } label: {
                        Text(MenuCategory.drink.rawValue)
                            .foregroundColor(Color(uiColor: UIColor.label))
                    }
                    Button {
                        print("Dessert filter pressed")
                    } label: {
                        Text(MenuCategory.dessert.rawValue)
                            .foregroundColor(Color(uiColor: UIColor.label))
                    }
                }
                
                //MARK: - SORT BY Section
                Section(FilterSections.sortBy.rawValue) {
                    // elements
                    Button {
                        print("Most popular filter pressed")
                    } label: {
                        Text(FilterTitles.mostPopular.rawValue)
                            .foregroundColor(Color(uiColor: UIColor.label))
                    }
                    Button {
                        print("Price filter pressed")
                    } label: {
                        Text(FilterTitles.price.rawValue)
                            .foregroundColor(Color(uiColor: UIColor.label))
                    }
                    Button {
                        print("A-Z filter pressed")
                    } label: {
                        Text(FilterTitles.az.rawValue)
                            .foregroundColor(Color(uiColor: UIColor.label))
                    }
                }
            }
            
            //MARK: - Nav Title
                .navigationTitle("Filter")
            //MARK: - Done button
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done") {
                            dismiss()
                        }
                    }
                }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
