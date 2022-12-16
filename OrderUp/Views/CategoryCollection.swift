//
//  CategoryCollection.swift
//  OrderUp
//
//  Created by Jadson on 16/12/22.
//

import SwiftUI

struct CategoryCollection: View {
    @Binding var selectedCategory: Categories
    
    var categories: [Categories]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(categories) { category in
                    CategoryRow(selectedCategory: self.$selectedCategory, category: category)
                }
            } //.padding()
        }//.frame(height: 100)
    }
}

