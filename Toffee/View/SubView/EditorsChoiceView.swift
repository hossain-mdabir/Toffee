//
//  EditorsChoiceView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 16-08-2023.
//

import SwiftUI

struct EditorsChoiceView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    var body: some View {
        VStack {
            // List Title
            ListTitleView(title: "Editor's Choice", isViewAll: false)
            
            VStack {
                ForEach(0 ..< editorsChoices.count, id: \.self) { index in
                    editorsChoiceItem(editorsChoice: editorsChoices[index], index: index)
                }
            }
        }
        .padding(.top, 10)
        .foregroundColor(Color.colorForeground)
        .background(Color("DarkTeal"))
        .clipShape(RoundedCornersShape(corners: [.topLeft, .topRight], radius: 20))
        .padding(.top)
    }
    
}

// MARK: - Preview
struct EditorsChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        EditorsChoiceView()
    }
}

struct editorsChoiceItem: View {
    var editorsChoice: EditorsChoice
    var index: Int
    var body: some View {
        if index % 2 == 0 { // if even --> will show on left. otherwise right
            HStack(spacing: 5) {
                Image(editorsChoice.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width / 2, height: 120, alignment: .leading)
                    .overlay(
                        Text(editorsChoice.duration)
                            .font(.system(size: 12))
                            .foregroundColor(Color.white)
                            .background(Color.black.opacity(0.5))
                        , alignment: .bottomTrailing
                    )
                
                VStack(alignment: .leading) {
                    Text(editorsChoice.seriesTitle)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 14))
                    
                    HStack {
                        Image("toffee-logo")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .cornerRadius(20)
                        
                        Text("Toffee")
                    }
                    
                    Text("\(editorsChoice.totalView) Views · \(editorsChoice.totalViewTime)")
                        .font(.system(size: 14, weight: .semibold))
                }
                .frame(alignment: .topLeading)
            }
            .frame(alignment: .leading)
        } else {
            HStack(spacing: 5) {
                VStack(alignment: .leading) {
                    Text(editorsChoice.seriesTitle)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 14))
                    
                    HStack {
                        Image("toffee-logo")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .cornerRadius(20)
                        
                        Text("Toffee")
                    }
                    
                    Text("\(editorsChoice.totalView) Views · \(editorsChoice.totalViewTime)")
                        .font(.system(size: 14, weight: .semibold))
                }
                .frame(alignment: .topTrailing)
                
                Image(editorsChoice.imageName)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2, height: 120, alignment: .trailing)
                    .overlay(
                        Text(editorsChoice.duration)
                            .font(.system(size: 12))
                            .foregroundColor(Color.white)
                            .background(Color.black.opacity(0.5))
                        , alignment: .bottomTrailing
                    )
            }
            .frame(alignment: .trailing)
        }
    }
}
