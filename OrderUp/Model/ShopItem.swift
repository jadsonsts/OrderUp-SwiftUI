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
    var category: Categories
}

