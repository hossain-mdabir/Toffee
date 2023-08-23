//
//  HomeView.swift
//  Tab Bar
//
//  Created by Md Abir Hossain on 13-08-2023.
//

import SwiftUI


struct HomeView: View {
    var body: some View {
        
        ScrollView {
            CarosalView()
            TVChannelView()
            // Categories
            CategoryView()
            // Moments
            MomentsView()
            // Editors
            //EditorsChoiceView()
            // Trending Channels
            TrendingChannelView()
            // Feed
           
            ForEach(editorsChoices) {item in
                LazyVStack{
                    feed(feed: item)
                }
            }//.onAppear {
//                UIScrollView.appearance().bounces = false
//            }
//            .onDisappear {
//                UIScrollView.appearance().bounces = true
//            }

        }

        .frame(maxHeight: UIScreen.main.bounds.height)
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
