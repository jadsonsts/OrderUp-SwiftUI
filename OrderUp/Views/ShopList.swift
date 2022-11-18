//
//  ShopList.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct ShopList: View {
    var categories: [Categories]
    @State private var cartItems: Dictionary<Int,ShopItem> = [:]
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Categories")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                ScrollView(.horizontal) {
                    HStack(spacing: 30) {
                        ForEach(categories) { category in
                            CategoryRow(category: category)
                        }
                    } .padding()
                }.frame(height: 100)
                Spacer()
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
            Categories(name: "Drinks", id: 3, imageName: "icons8-thanksgiving_turkey"),
            Categories(name: "Dairy", id: 4, imageName: "icons8-cherry_donut")])
    }
}
