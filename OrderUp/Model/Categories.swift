//
//  Categories.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import Foundation

struct Categories: Identifiable, Equatable {
    var name: String
    var id: Int
    var imageName: String
}

extension Categories {
    static func allCategories() -> [Categories] {
        return [Categories(name: "All", id: 0, imageName: "all"),
                Categories(name: "Bakery", id: 1, imageName: "bakeryIcon"),
                Categories(name: "Butchery", id: 2, imageName: "icons8-gammon"),
                Categories(name: "Drinks", id: 3, imageName: "drinkicon"),
                Categories(name: "Dairy", id: 4, imageName: "dairyicon"),
                Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-tomato_and_garlic_1")].sorted { (lhsCatItem, rhsCatItem) -> Bool in
            return lhsCatItem.name < rhsCatItem.name
        }
    }
}
