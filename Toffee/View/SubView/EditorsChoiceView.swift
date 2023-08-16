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
            
            LazyVStack {
                ForEach(0 ..< editorsChoice.count, id: \.self) { index in
                    if index % 2 == 0 { // if even --> will show on left. otherwise right
                        HStack(spacing: 0) {
                            Image(editorsChoice[index].imageName)
                                .resizable()
                                .frame(maxWidth: UIScreen.main.bounds.width / 2, maxHeight: 120, alignment: .leading)
                                .overlay(
                                    Text(editorsChoice[index].duration)
                                        .font(.system(size: 12))
                                        .foregroundColor(Color.white)
                                        .background(Color.black.opacity(0.5))
                                    , alignment: .bottomTrailing
                                )
                            
                            VStack(alignment: .leading) {
                                Text(editorsChoice[index].seriesTitle)
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 14))
                                
                                HStack {
                                    Image("toffee-logo")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .cornerRadius(20)
                                    
                                    Text("Toffee")
                                }
                                
                                HStack{
                                    Text("\(editorsChoice[index].totalView) Views · \(editorsChoice[index].totalViewTime)")
                                        .font(.system(size: 14, weight: .semibold))
                                }
                                
                                Spacer()
                                
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    } else {
                        HStack {
                             VStack(alignment: .leading) {
                                Text(editorsChoice[index].seriesTitle)
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 14))
                                
                                HStack {
                                    Image("toffee-logo")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .cornerRadius(20)
                                    
                                    Text("Toffee")
                                }
                                
                                HStack{
                                    Text("\(editorsChoice[index].totalView) Views · \(editorsChoice[index].totalViewTime)")
                                        .font(.system(size: 14, weight: .semibold))
                                }
                                
                                Spacer()
                                
                            }
                            
                            Image(editorsChoice[index].imageName)
                                .resizable()
                                .frame(maxWidth: UIScreen.main.bounds.width / 2, maxHeight: 120, alignment: .trailing)
                                .overlay(
                                    Text(editorsChoice[index].duration) 
                                        .font(.system(size: 12))
                                        .foregroundColor(Color.white)
                                        .background(Color.black.opacity(0.5))
                                    , alignment: .bottomTrailing
                                )
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
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
