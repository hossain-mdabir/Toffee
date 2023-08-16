//
//  MomentsView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 16-08-2023.
//

import SwiftUI

struct MomentsView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    var body: some View {
        VStack {
            // List title
            ListTitleView(title: "Moments", isViewAll: false)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(0 ..< moments.count, id: \.self) { index in
                        ZStack(alignment: .center) {
                            Image(moments[index].imageName)
                                .resizable()
                                .frame(width: 120, height: 200)
                            
                            Image(systemName: "play.fill")
                                .padding(15)
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .background(Color.black.opacity(0.4))
                                .cornerRadius(30)
                        }
                        .overlay(
                            Text(moments[index].momentTitle)
                                .padding([.leading, .bottom], 5)
                                .font(.system(size: 11))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.white)
                                .frame(maxWidth: .infinity, maxHeight: 30, alignment: .bottomLeading)
                                .background(Color.black.opacity(0.3))
                            , alignment: .bottomLeading
                        )
                        .cornerRadius(15)
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

// MARK: - Preview
struct MomentsView_Previews: PreviewProvider {
    static var previews: some View {
        MomentsView()
    }
}
