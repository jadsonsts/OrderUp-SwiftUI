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
        return [ShopItem(id:  0, price: 1.00, name: "Biscuit", description: "A marvelous chocolate biscuit made from the finest ingredients in Europe", image: "biscuit", categoryID: 1),
                ShopItem(id: 1, price: 2.30, name: "Bread", description: "It's just bread 💁🏽‍♂️", image: "bread", categoryID: 1),
                ShopItem(id: 2, price: 12.00, name: "Chocolate Cake", description: "Do you know Matilda's movie? Well, this chocolate cake is a copycat of it 😏", image: "choccake", categoryID: 1),
                ShopItem(id: 3, price: 1.20, name: "Croissant", description: "It came straight from France, don't expect much", image: "croissant", categoryID: 1),
                
                ShopItem(id: 4, price: 8.00, name: "Salmon Kg", description: "The best fish for sushi", image: "icons8-salmon", categoryID: 2),
                
                ShopItem(id: 5, price: 14.00, name: "Scoth Beef Kg", description: "Great for BBQ 😋", image: "beef", categoryID: 2),
                ShopItem(id: 6, price: 9.99, name: "Chicken Drumsticks", description: "Meh, just chicken", image: "chicken", categoryID: 2),
                ShopItem(id: 7, price: 2.00, name: "Coca Cola", description: "No words are needed", image: "coke", categoryID: 3),
                ShopItem(id: 8, price: 3.20, name: "Milk", description: "Neither the calves", image: "milk", categoryID: 4),
                ShopItem(id: 9, price: 2.89, name: "Orange Juice", description: "The best... for some ppl", image: "orangejuice", categoryID: 3),
                ShopItem(id: 10, price: 2.20, name: "Beer", description: "Cheers", image: "beer", categoryID: 3),
                ShopItem(id: 11, price: 3.40, name: "Energy Drink", description: "Give you wiiiings", image: "energydrink", categoryID: 3),
                ShopItem(id: 12, price: 7.00, name: "Eggs", description: "The chicks ain't happy with it...", image: "egg", categoryID: 4),
                ShopItem(id: 13, price: 12.00, name: "Blue Cheese", description: "Product images are for illustrative purposes only.", image: "bluecheese", categoryID: 4),
                ShopItem(id: 14, price: 2.30, name: "Yogurt", description: "Soo good!", image: "yogurt", categoryID: 4),
                ShopItem(id: 15, price: 2.00, name: "Aspargus", description: "Yeah, not that bad", image: "icons8-_asparagus_vegetable", categoryID: 5),
                ShopItem(id: 16, price: 1.20, name: "Beetroot", description: "How people like it?", image: "icons8-beetroot_1", categoryID: 5),
                ShopItem(id: 17, price: 2.30, name: "Mushroom", description: "It makes me high", image: "icons8-boletus_mashroom", categoryID: 5),
                ShopItem(id: 18, price: 1.15, name: "Chili Pepper", description: "This is F* hot 🥵", image: "icons8-chili_pepper", categoryID: 5),
                ShopItem(id: 19, price: 3.40, name: "Pears", description: "Nice fruit", image: "icons8-pears_", categoryID: 5),
                ShopItem(id: 20, price: 4.30, name: "Lemon Cake", description: "Well, some people like it", image: "icons8-lemon_cake", categoryID: 1),
                ShopItem(id: 21, price: 2.49, name: "Banana", description: "Ba-ba-ba-ba-ba-na-na, Banana-ah-ah", image: "icons8-sweet_banana", categoryID: 5),
                ShopItem(id: 22, price: 0.99, name: "Carrot", description: "Have you tried carrot cake?", image: "icons8-sweet_carrot", categoryID: 5)
        ].sorted { lhsShopItem, rhsShopItem -> Bool in
            return lhsShopItem.name < rhsShopItem.name
        }
    }
}

