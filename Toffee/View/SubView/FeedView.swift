//
//  FeedView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 16-08-2023.
//

import SwiftUI

struct FeedView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    var body: some View {
        VStack {
            // TV Channels TITLE
            HStack {
                Text("Feed")
                    .font(.title3)
                
                Spacer()
                
                // Menu button
                Menu {
                    Button {
                        
                    } label: {
                        HStack(spacing: 0) {
                            Text("Latest Videos")
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        HStack(spacing: 0) {
                            Text("Trending Videos")
                        }
                    }
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .bold()
                }

            }
            .padding(20)
            .foregroundColor(Color.colorForeground)
            
            
            LazyVStack {
                ForEach(0 ..< editorsChoice.count, id: \.self) { index in
                    VStack(alignment: .leading, spacing: 0) {
                        Image(editorsChoice[index].imageName)
                            .resizable()
                            .frame(maxWidth: .infinity, maxHeight: 220)
                            .overlay(
                                Text(editorsChoice[index].duration)
//                                    .font(.system(size: 12))
                                    .foregroundColor(Color.white)
                                    .background(Color.black.opacity(0.5))
                                , alignment: .bottomTrailing
                            )
                        
                        HStack {
                            Image("toffee-logo")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .cornerRadius(20)
                            
                            VStack(alignment: .leading) {
                                
                                HStack {
                                    Text(editorsChoice[index].seriesTitle)
                                    
                                    Spacer()
                                    
                                    // Menu Button
                                    Menu {
                                        Button {
                                            
                                        } label: {
                                            Text("Add to Favourites")
                                        }
                                        
                                        Button {
                                            
                                        } label: {
                                            Text("Add to PlayList")
                                        }
                                        
                                        Button {
                                            
                                        } label: {
                                            Text("Add to Report")
                                        }
                                        
                                    } label: {
                                        Image(systemName: "ellipsis")
                                            .padding(5)
                                            .rotationEffect(.degrees(90))
                                    }
                                }
                                
                                
                                Text("Toffee · 2d")
                                
                                HStack {
                                    // Total View
                                    Text("\(editorsChoice[index].totalView) Views")
                                    
                                    Spacer()
                                    
                                    // Share
                                    HStack {
                                        Image(systemName: "arrowshape.turn.up.right")
                                        
                                        Text("202")
                                    }
                                    
                                    Spacer()
                                    
                                    // Reaction
                                    HStack {
                                        Image(systemName: "heart")
                                        
                                        Text("React")
                                    }
                                    .overlay (
                                        HStack(spacing: 0) {
                                            Image(systemName: "hand.thumbsup.fill")
                                                .foregroundColor(Color.blue)
                                                .zIndex(3)
                                            
                                            Text("♥️")
                                                .zIndex(2)
                                                .padding(.leading, -7)
                                            
                                            Text("😮")
                                                .zIndex(1)
                                                .padding(.leading, -7)
                                            
                                            Text("172")
                                        }
                                            .padding(.bottom, 35)
                                    )
                                }
                                .padding(.trailing, 30)
                            }
                        }
                        .padding([.top, .leading, .bottom], 10)
                        .background(Color("DarkTeal"))
                        .clipShape(RoundedCornersShape(corners: [.bottomLeft, .bottomRight], radius: 20))
                    }
                    .font(.system(size: 12))
                    .foregroundColor(Color.colorForeground)
                    .padding(.bottom, 10)
                }
            }
        }
    }
}

// MARK: - Preview
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
            .background(Color.colorBackground)
    }
}
