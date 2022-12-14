//
//  StepperView.swift
//  OrderUp
//
//  Created by Jadson on 14/12/22.
//

import SwiftUI

struct StepperView: View {
    
    @Binding var cartItems: Dictionary<Int, CartItem>
    
    var item: ShopItem
    
    var body: some View {
        ZStack(alignment: .center) {
            Stepper (onIncrement: {
                self.cartItems[self.item.id]!.quantity += 1
            }, onDecrement: {
                self.cartItems[self.item.id]!.quantity -= 1
                if self.cartItems[self.item.id]!.quantity == 0 {
                    self.cartItems[self.item.id] = nil
                }
            }) {
                Text("Value: \(self.cartItems[item.id]?.quantity ?? 0)")
            }
            .foregroundColor(.cyan)
            .labelsHidden()
            
            Text("\(self.cartItems[item.id]?.quantity ?? 0)")
                .font(Font.system(size: 14))
                .foregroundColor(.cyan)
        }
    }
}

