//
//  TVChannelView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 14-08-2023.
//

import SwiftUI

struct TVChannelView: View {
    // MARK: - Properties
    let channelList = ["channel 0", "channel 1", "channel 2", "channel 3", "channel 4", "channel 5", "channel 6", "channel 7", ]
    
    
    // Body
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.colorBackground)
                .frame(maxWidth: .infinity, maxHeight: 110)
                .clipShape(RoundedCornersShape(corners: [.bottomLeft, .bottomRight], radius: 20))
            
            VStack(spacing: 0) {
                // TV Channels TITLE
                ListTitleView(title: "Popular TV Channels", isViewAll: true)
                
                // TV Channels List
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(0 ..< channelList.count, id: \.self) { channel in
                            Image(channelList[channel])
                                .resizable()
                                .frame(width: 80, height: 80)
                        }
                    }.padding(.horizontal, 8)
                        .clipped()
//                        .onAppear{
//                            UIScrollView.appearance().bounces = false
//                        }
//                        .onDisappear{
//                            UIScrollView.appearance().bounces = true
//                        }
                }
            }
        }
        .foregroundColor(Color.colorForeground)
    }
}

// MARK: - Preview
struct TVChannelView_Previews: PreviewProvider {
    static var previews: some View {
        TVChannelView()
    }
}
