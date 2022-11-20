//
//  ItemRow.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct ItemRow: View {
    var inCart: Bool
    var shopItem: ShopItem
    @State var numberOfItems: Int
    var body: some View {
        ZStack {
            VStack (spacing: 0) {
                Image("icons8-sweet_carrot")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(maxWidth: 70)
                    .frame(width: 250, height: 50, alignment: .top)
                    .offset(x:-120, y:+20)
                    .background(Color.red)
                
                Text(shopItem.name)
                Text(shopItem.description)
                
                HStack {
                    Text("$\(String(format: "%.2f", shopItem.price))")
                        .padding()
                    Stepper("", value: $numberOfItems,
                            in: 0...30,
                            step: 1)
                }
            }
            .padding(5)
            .background(Color.gray)
            .frame(width: 320, height: 100)

        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(inCart: true, shopItem: ShopItem(id: 1, price: 20.00, name: "Potato", description: "A sack of potatoes", category: Categories(name: "Fruits and Vegetables", id: 5, imageName: "icons8-beetroot_1")), numberOfItems: 1)
    }
}
