//
//  ListItem.swift
//  OrderUp
//
//  Created by Jadson on 16/12/22.
//

import SwiftUI

struct ListItem: View {
    
    @Binding var cartItems: Dictionary<Int, CartItem>
    @Binding var selectedCategory: Categories
    
    
    var availableItems: [ShopItem]
    
    
    var body: some View {
        List(availableItems.filter({ shopItem -> Bool in
            if selectedCategory.id == 0 {
                return true
            } else {
                return shopItem.categoryID == selectedCategory.id
            }
        })) { item in
            ItemRow(cartItems: self.$cartItems, shopItem: item)
        }
    }
}


