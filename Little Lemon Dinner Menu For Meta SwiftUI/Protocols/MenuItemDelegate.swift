//
//  MenuItemDelegate.swift
//  Little Lemon Dinner Menu For Meta SwiftUI
//
//  Created by Oleksandr Smakhtin on 11.02.2023.
//

import Foundation

//MARK: - MenuItem Delegate
protocol MenuItemDelegate {
    var uid: UUID { get }
    var priceDouble: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredient: [Ingredient] { get set }
}
