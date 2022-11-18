//
//  Cart.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct Cart: View {
    var cartItems: Int
    var body: some View {
        ZStack {
            Image("cart")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 50)
            ZStack{
                Circle()
                    .fill(Color.red)
                    .frame(maxWidth: 30)
                Text(String(cartItems))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)

            }
            .offset(x: 20, y: 10)
            .opacity(cartItems > 0 ? 1.0 : 0)
        }
    }
}
