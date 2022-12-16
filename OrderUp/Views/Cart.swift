//
//  Cart.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct Cart: View {
    var cartQty: Int {
        var quantity = 0
        for item in cartItems.values {
            quantity += item.quantity
        }
        return quantity
    }
    var cartItems: Dictionary<Int, CartItem>
    var body: some View {
        ZStack {
            Image("cart")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 50)
            ZStack{
                Circle()
                    .fill(Color.red)
                    .frame(maxWidth: 25)
                Text("\(cartQty)")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)

            }
            .offset(x: 20, y: 10)
            .opacity(cartQty > 0 ? 1.0 : 0)
        }
    }
}
