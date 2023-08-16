//
//  ListTitleView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 14-08-2023.
//

import SwiftUI

struct ListTitleView: View {
    // MARK: - Properties
    let title: String
    let isViewAll: Bool
    
    // MARK: - Body
    var body: some View {
        // TV Channels TITLE
        HStack {
            Text(title)
                .font(.title3)
            
            Spacer()
            
            // ViewAll button
            if isViewAll {
                Button {
                    
                } label: {
                    HStack(spacing: 0) {
                        Text("View All")
                        
                        Image(systemName: "chevron.right")
                    }
                    .font(.system(size: 14, weight: .semibold))
                }
            }
        }
        .padding(20)
        .foregroundColor(Color.colorForeground)
    }
}

// MARK: - Preview
struct ListTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ListTitleView(title: "Popular TV Channels", isViewAll: true)
    }
}
