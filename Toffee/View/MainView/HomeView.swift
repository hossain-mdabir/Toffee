//
//  HomeView.swift
//  Tab Bar
//
//  Created by Md Abir Hossain on 13-08-2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Carosal Scroll
            CarosalView()
            
            // TV Channels
            TVChannelView()
            
            // Categories
            CategoryView()
            
            Text("Moments")
                .font(.title3)
                .foregroundColor(Color.colorForeground)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
