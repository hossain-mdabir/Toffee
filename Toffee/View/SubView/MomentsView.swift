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
                HStack {
                    ForEach(moments) { item in
                        moment(moment: item)
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
struct moment: View {
    var moment: Moments
    var body: some View {
        ZStack(alignment: .center) {
                Image(moment.imageName)
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
                Text(moment.momentTitle)
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
