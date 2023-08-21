//
//  TrendingChannel.swift
//  Toffee
//
//  Created by Md Abir Hossain on 16-08-2023.
//

import Foundation


struct TrendingChannel: Identifiable {
    let id = UUID().uuidString
    let channelName: String
    let channelImage: String
}

// MARK: - Demo Data
let trendingChannels: [TrendingChannel] = [
    TrendingChannel(channelName: "CMV", channelImage: "trending"), TrendingChannel(channelName: "Talukdar Academy", channelImage: "trending 1"), TrendingChannel(channelName: "Shafin Ahmed", channelImage: "trending 2"), TrendingChannel(channelName: "Gaming With Talha", channelImage: "trending 3"), TrendingChannel(channelName: "CV Dision", channelImage: "trending 4"), TrendingChannel(channelName: "MK Production", channelImage: "trending 5")
]
