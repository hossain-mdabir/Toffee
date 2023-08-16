//
//  CategoryView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 14-08-2023.
//

import SwiftUI


struct CategoryView: View {
    // MARK: - Properties
    
    let columnSpacing: CGFloat = 15
    let rowSpacing: CGFloat = 10
    var gridLayout: [GridItem] {
      return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
    }
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            // Categories Title
            ListTitleView(title: "Categories")
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                    ForEach(categories) { category in
                        Image(category.catBackgroundImage)
                            .resizable()
//                            .scaledToFit()
                            .frame(width: 200)
                            .cornerRadius(20)
                            .overlay (
                                HStack {
                                    Image(systemName: category.catLogo)
                                        .font(.title2.weight(.semibold))
                                    
                                    Text(category.catName)
                                        .font(.system(size: 16, weight: .bold))
                                }
                                    .font(.title3.weight(.semibold))
                                    .foregroundColor(Color.white)
                                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                                    .padding([.leading, .bottom], 10)
                                , alignment: .bottomLeading
                            )
                    }
                })
                .frame(maxWidth: .infinity, maxHeight: 200)
            }
            .padding(.horizontal, 10)
        }
    }
}

// MARK: - Preview
struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
