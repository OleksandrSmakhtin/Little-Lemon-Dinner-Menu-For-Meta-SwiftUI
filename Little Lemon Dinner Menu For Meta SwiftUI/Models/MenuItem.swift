//
//  MenuItem.swift
//  Little Lemon Dinner Menu For Meta SwiftUI
//
//  Created by Oleksandr Smakhtin on 11.02.2023.
//

import Foundation

//MARK: - MenuItem Struct
struct MenuItem: MenuItemDelegate, Identifiable {
    var id: ObjectIdentifier?
    var title: String
    var ingredient: [Ingredient]
    var uid: UUID = UUID()
    var priceDouble: Double
    var menuCategory: MenuCategory
    var ordersCount: Int
}
