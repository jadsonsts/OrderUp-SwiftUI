//
//  ShopList.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct ShopList: View {
    var categories: [Categories]
    var availableItems: [ShopItem]
    @State private var cartItems: Dictionary<Int,ShopItem> = [:]
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Categories")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .offset(x: -130)
                ScrollView(.horizontal) {
                    HStack(spacing: 30) {
                        ForEach(categories) { category in
                            CategoryRow(category: category)
                                .offset(y: -20)
                        }
                    } .padding()
                }.frame(height: 100)
                Spacer()
                List(availableItems) { item in
                    ItemRow(inCart: true, shopItem: item, numberOfItems: 1)
                }
                Cart(cartItems: cartItems.count)
            }
            .navigationTitle("The Shop List")
            .navigationBarItems(trailing: Cart(cartItems: cartItems.count))

        }

    }
}


struct ShopList_Previews: PreviewProvider {
    static var previews: some View {
        ShopList(categories: [
            Categories(name: "Bakery", id: 1, imageName: "icons8-sweet_banana"),
            Categories(name: "Butchery", id: 2, imageName: "icons8-sweet_carrot"),
            Categories(name: "Drinks", id: 3, imageName: "icons8-_takeaway_hot_drink"),
            Categories(name: "Dairy", id: 4, imageName: "icons8-cherry_donut"),
            Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1")],
                 availableItems: [
                    ShopItem(id: 1, price: 10.00, name: "Potato Kg", description: "A sack of Potatoes", category: Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1")),
                    ShopItem(id: 1, price: 10.00, name: "Potato Kg", description: "A sack of Potatoes", category: Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1")),
                    ShopItem(id: 1, price: 10.00, name: "Potato Kg", description: "A sack of Potatoes", category: Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1")),
                    ShopItem(id: 1, price: 10.00, name: "Potato Kg", description: "A sack of Potatoes", category: Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1")),
                    ShopItem(id: 1, price: 10.00, name: "Potato Kg", description: "A sack of Potatoes", category: Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1")),
                    ShopItem(id: 1, price: 10.00, name: "Potato Kg", description: "A sack of Potatoes", category: Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1"))
                 ])
    }
}
