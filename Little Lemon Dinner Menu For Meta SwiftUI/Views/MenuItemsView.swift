//
//  MenuItemsView.swift
//  Little Lemon Dinner Menu For Meta SwiftUI
//
//  Created by Oleksandr Smakhtin on 11.02.2023.
//

import SwiftUI

struct MenuItemsView: View {
    
    @State var showOptions: Bool = false
    
    //MARK: - Arrays of data
    let foodMenuItems = MenuViewViewModel.shared.getFoodItems()
    let drinkMenuItems = MenuViewViewModel.shared.getDrinkItems()
    let dessertMenuItems = MenuViewViewModel.shared.getDessertItems()
    
    let adaptCol = [GridItem(.adaptive(minimum: 100))]
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                ScrollView {
                    
                    //MARK: - Food menu
                    Text(MenuCategory.food.rawValue)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading], 20)
                    
                    LazyVGrid(columns: adaptCol, spacing: 10) {
                        ForEach(foodMenuItems.indices) { index in
                            // nav link to chosen item
                            NavigationLink(destination: MenuItemDetailsView(itemDetails: foodMenuItems[index])) {
                                
                                VStack {
                                    // image for cell
                                    Image(systemName: "carrot.fill")
                                        .imageScale(.large)
                                        .frame(width: 120, height: 100)
                                        //.background(.gray)
                                        .border(.orange)
                                        .foregroundColor(.orange)
                                    // food title
                                    Text("Food \(index + 1)")
                                        .foregroundColor(Color(uiColor: UIColor.label))
                                }
                            }
                        }
                    }
                    
                    //MARK: - Drink menu
                    Text(MenuCategory.drink.rawValue)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top], 20)
                    
                    LazyVGrid(columns: adaptCol, spacing: 10) {
                        ForEach(drinkMenuItems.indices) { index in
                            // nav link to chosen item
                            NavigationLink(destination: MenuItemDetailsView(itemDetails: drinkMenuItems[index])) {
                                
                                VStack {
                                    // image for cell
                                    Image(systemName: "wineglass.fill")
                                        .imageScale(.large)
                                        .frame(width: 120, height: 100)
                                        .border(.purple)
                                        .foregroundColor(.purple)
                                    // drink title
                                    Text("Drink \(index + 1)")
                                        .foregroundColor(Color(uiColor: UIColor.label))
                                }
                            }
                        }
                    }
                    
                    //MARK: - Dessert menu
                    Text(MenuCategory.dessert.rawValue)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top], 20)
                    
                    
                    LazyVGrid(columns: adaptCol, spacing: 10) {
                        ForEach(dessertMenuItems.indices) { index in
                            // nav link to chosen item
                            NavigationLink(destination: MenuItemDetailsView(itemDetails: dessertMenuItems[index])) {
                                
                                VStack {
                                    // image for cell
                                    Image(systemName: "birthday.cake.fill")
                                        .imageScale(.large)
                                        .frame(width: 120, height: 100)
                                        .border(.brown)
                                        .foregroundColor(.brown)
                                    // dessert title
                                    Text("Dessert \(index + 1)")
                                        .foregroundColor(Color(uiColor: UIColor.label))
                                }
                            }
                        }
                    }
                    
                    
                    
                    
                }
            }
            
            
            //MARK: - show options view
                .sheet(isPresented: $showOptions, content: {
                    MenuItemsOptionView()
                })
            //MARK: - navifation title
                .navigationTitle("Menu")
            //MARK: - Options button
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showOptions.toggle()
                        } label: {
                            Label("", systemImage: "slider.horizontal.3")
                        }

                    }
                }
        }
            
        
    }

}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
