//
//  CategoryRow.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct CategoryRow: View {
    var category: Categories
    
    var body: some View {
        VStack {
            Image(category.imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 35, height: 35)
            Text(category.name)
                .fontWeight(.bold)
        }
        //.frame(width: 40, height: 40)
    }
}


