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
                Categories(name: "Bakery", id: 1, imageName: "icons8-sweet_banana"),
                Categories(name: "Butchery", id: 2, imageName: "icons8-sweet_carrot"),
                Categories(name: "Drinks", id: 3, imageName: "icons8-_takeaway_hot_drink"),
                Categories(name: "Dairy", id: 4, imageName: "icons8-cherry_donut"),
                Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1")].sorted { (lhsCatItem, rhsCatItem) -> Bool in
            return lhsCatItem.name < rhsCatItem.name
        }
    }
}
