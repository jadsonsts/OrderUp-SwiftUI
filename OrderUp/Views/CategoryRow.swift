//
//  CategoryRow.swift
//  OrderUp
//
//  Created by Jadson on 18/11/22.
//

import SwiftUI

struct CategoryRow: View {
    
    @Binding var selectedCategory: Categories
    
    var category: Categories
    
    var body: some View {
        VStack {
            Image(category.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
            if category == self.selectedCategory {
                Text(category.name)
                    .fontWeight(.bold)
                    .foregroundColor(.cyan)
            } else {
                Text(category.name)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
        }
        .frame(width: 100, height: 100)
        .onTapGesture {
            self.selectedCategory = self.category
        }
    }
}


