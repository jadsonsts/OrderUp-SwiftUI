//
//  ItemRow.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct ItemRow: View {
    
    @Binding var cartItems: Dictionary<Int, CartItem>
    
    //var inCart: Bool
    var shopItem: ShopItem
    
    var body: some View {
        HStack {
            Image(shopItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 75)
            VStack(alignment: .leading) {
                Text(shopItem.name)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Text(shopItem.description)
                    .font(.subheadline)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                Text("$\(String(format:"%.2f", shopItem.price))")
                    .fontWeight(.semibold)
                    .foregroundColor(.cyan)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
            if inCart(shopItem: shopItem) {
                StepperView(cartItems: self.$cartItems, item: shopItem)
            } else {
                AddToCart()
                    .onTapGesture {
                        self.toggleCartItem(shopItem: self.shopItem)
                    }
            }
        }
    }
    
    private func inCart(shopItem: ShopItem) -> Bool {
        return cartItems[shopItem.id] != nil
    }
    
    private func toggleCartItem(shopItem: ShopItem) {
        if cartItems[shopItem.id] == nil {
            cartItems[shopItem.id] = CartItem(item: shopItem, quantity: 1)
            
        } else {
            cartItems[shopItem.id] = nil
        }
    }
}

