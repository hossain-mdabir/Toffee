//
//  HomeView.swift
//  Tab Bar
//
//  Created by Md Abir Hossain on 13-08-2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 0) {
                // Carosal Scroll
                CarosalView()
                
                // TV Channels
                TVChannelView()
                
                // Categories
                CategoryView()
                
                // Moments
                MomentsView()
                
                // Editors
                EditorsChoiceView()
                
                // Trending Channels
                TrendingChannelView()
                
                // Feed
                FeedView()
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
