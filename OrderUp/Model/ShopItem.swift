//
//  ShopItem.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import Foundation

struct ShopItem: Identifiable {
    var id: Int
    var price: Double
    var name: String
    var description: String
    var image: String
    var categoryID: Int
}

extension ShopItem {
    static func all() -> [ShopItem] {
        return [ShopItem(id:  0, price: 1.00, name: "", description: "", image: "", categoryID: 1),
                ShopItem(id: 1, price: 2.00, name: "", description: "", image: "", categoryID: 1),
                ShopItem(id: 2, price: 3.00, name: "", description: "", image: "", categoryID: 1),
                ShopItem(id: 3, price: 4.00, name: "", description: "", image: "", categoryID: 2),
                ShopItem(id: 4, price: 5.00, name: "", description: "", image: "", categoryID: 2),
                ShopItem(id: 5, price: 3.00, name: "", description: "", image: "", categoryID: 2),
                ShopItem(id: 6, price: 4.00, name: "", description: "", image: "", categoryID: 3),
                ShopItem(id: 7, price: 3.00, name: "", description: "", image: "", categoryID: 3),
                ShopItem(id: 8, price: 4.00, name: "", description: "", image: "", categoryID: 3),
                ShopItem(id: 9, price: 5.00, name: "", description: "", image: "", categoryID: 4),
                ShopItem(id: 10, price: 5.00, name: "", description: "", image: "", categoryID: 4),
                ShopItem(id: 11, price: 5.00, name: "", description: "", image: "", categoryID: 5),
                ShopItem(id: 12, price: 5.00, name: "", description: "", image: "", categoryID: 5),
                ShopItem(id: 13, price: 5.00, name: "", description: "", image: "", categoryID: 5),
                ShopItem(id: 14, price: 5.00, name: "", description: "", image: "", categoryID: 5),
                ShopItem(id: 15, price: 5.00, name: "", description: "", image: "", categoryID: 4),
                ShopItem(id: 16, price: 5.00, name: "", description: "", image: "", categoryID: 4),
                ShopItem(id: 17, price: 5.00, name: "", description: "", image: "", categoryID: 3),
                ShopItem(id: 18, price: 5.00, name: "", description: "", image: "", categoryID: 2),
                ShopItem(id: 19, price: 5.00, name: "", description: "", image: "", categoryID: 1),
                ShopItem(id: 20, price: 5.00, name: "", description: "", image: "", categoryID: 1)].sorted { lhsShopItem, rhsShopItem -> Bool in
            return lhsShopItem.name < rhsShopItem.name
        }
    }
}

