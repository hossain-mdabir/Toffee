//
//  HomeScreenView.swift
//  Tab Bar
//
//  Created by Md Abir Hossain on 13-08-2023.
//

import SwiftUI

enum SelectedView {
    case home, flag, setting, profile
}

struct HomeScreenView: View {
    // MARK: - Properties
    
    // View Selection
    @State private var selectedView: SelectedView? = .home
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            // NavBar
            HStack(spacing: 20) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 60)
                
                Spacer()
                
                // Search Button
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                
                // Notification button
                Button {
                    
                } label: {
                    ZStack(alignment: .trailing) {
                        Image(systemName: "bell")
                        
                        Circle()
                            .fill(Color.pink)
                            .frame(width: 9, height: 9)
                            .padding(.bottom, 8)
                    }
                }
                
                // Profile Button
                Button {
                    
                } label: {
                    Image(systemName: "person.circle")
                        .padding(.trailing)
                }
            }
            .font(.title2)
            .foregroundColor(Color.colorForeground)
            .background(Color.colorBackground)
            
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    // Conditioal Views
                    switch selectedView {
                    case .home:
                        HomeView()
                    case .flag:
                        FlagView()
                    case .setting:
                        SettingView()
                    case .profile:
                        ProfileView()
                    case .none:
                        HomeView()
                    }
                }
            }
            
            // TabBar Buttons
            ZStack(alignment: .bottom) { //(alignment: .bottom)
                HStack {
                    Button {
                        selectedView = .home
                    } label: {
                        VStack {
                            Image(systemName:  "house")
                            
                            Text("Home")
                                .font(.system(size: 12))
                        }
                        .foregroundColor(selectedView == .home ? .black : .gray)
                    }
                    
                    Spacer(minLength: 12)
                    
                    Button {
                        selectedView = .flag
                    } label: {
                        VStack {
                            Image(systemName:  "flag")
                            
                            Text("Flag")
                                .font(.system(size: 12))
                        }
                        .foregroundColor(selectedView == .flag ? .black : .gray)
                        .padding(.horizontal, 10)
                    }
                    
                    Spacer()
                        .frame(width: 100)
                    
                    Button {
                        selectedView = .setting
                    } label: {
                        VStack {
                            Image(systemName:  "wrench.and.screwdriver.fill")
                            
                            Text("Settings")
                                .font(.system(size: 12))
                        }
                        .foregroundColor(selectedView == .setting ? .black : .gray)
                    }
                    
                    Spacer(minLength: 12)
                    
                    Button {
                        selectedView = .profile
                    } label: {
                        VStack {
                            Image(systemName:  "person")
                            
                            Text("Profile")
                                .font(.system(size: 12))
                        }
                        .foregroundColor(selectedView == .profile ? .black : .gray)
                    }
                }
                .fontWeight(.bold)
                .padding()
                .padding(.horizontal, 22)
                .offset(y: -18)
                .background(CurveShapeView(foregroundColor: Color.white, shadowColor: Color.gray))
                .frame(maxWidth: .infinity, alignment: .bottom)
                
                // Center Button
                Button {
                    
                } label: {
                    Image(systemName: "bolt")
                    
                        .font(.title3.weight(.bold))
                        .foregroundColor(Color.white)
                        .padding(20)
                }
                .background(Color.green)
                .clipShape(Circle())
                .offset(y: -48)
            }.ignoresSafeArea(.all, edges: .bottom)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

// MARK: - Preview
struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
