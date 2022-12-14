//
//  AddToCart.swift
//  OrderUp
//
//  Created by Jadson on 14/12/22.
//

import SwiftUI

struct AddToCart: View {
    var body: some View {
        ZStack {
            Capsule()
                .fill(Color.cyan)
                .frame(width: 100, height: 25, alignment: .center)
            Text("Add to cart")
                .font(Font.system(size: 12))
                .fontWeight(.bold)
                .font(.body)
                .foregroundColor(.white)
        }
        .shadow(radius: 5.0)
    }
}

struct AddToCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart()
    }
}
