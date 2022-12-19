//
//  ShopList.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct ShopList: View {
    
    @State private var cartItems: Dictionary<Int,CartItem> = [:]
    @State private var selectedCategory: Categories = Categories(name: "All", id: 0, imageName: "all")
    
    var categories: [Categories] = Categories.allCategories()
    var availableItems: [ShopItem] = ShopItem.all()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Categories")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.leading)
                CategoryCollection(selectedCategory: $selectedCategory, categories: categories)
                Text("Menu")
                    .font(.headline)
                    .padding(.leading)
                ListItem(cartItems: $cartItems, selectedCategory: $selectedCategory, availableItems: availableItems)
                
            }
            .navigationTitle("The Shop List")
           .navigationBarItems(trailing: Cart(cartItems: cartItems))

        }

    }
}


struct ShopList_Previews: PreviewProvider {
    static var previews: some View {
        ShopList()
    }
}
