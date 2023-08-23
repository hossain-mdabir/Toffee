//
//  TrendingChannelsView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 16-08-2023.
//

import SwiftUI

struct TrendingChannelView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.colorBackground)
               // .cornerRadius(15)
                .frame(height: 110)
                
            VStack(spacing: 0) {
                
                // Trending Channels TITLE
                ListTitleView(title: "Trending Channels", isViewAll: true)
                
                // Trending Channels List
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(trendingChannels) { item in
                            trendingChannel(trendingChannel: item)
                        }
                    }
                    .padding([.vertical, .horizontal], 8)
                }
            }
        }
        .foregroundColor(Color.colorForeground)
    }
    
}

// MARK: - Properties
struct TrendingChannelsView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingChannelView()
    }
}

struct trendingChannel: View {
    var trendingChannel: TrendingChannel
    var body: some View{
        VStack {
            Image(trendingChannel.channelImage)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                            
            Text(trendingChannel.channelName)
                .font(.system(size: 12))
                .lineLimit(1)
            
            Button {
                print("Followed")
            } label: {
                Text("FOLLOW")
                    .font(.system(size: 10, weight: .semibold))
                    .frame(height: 25)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.pink)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.pink, lineWidth: 1)
                    )
            }
        }
    }
}
