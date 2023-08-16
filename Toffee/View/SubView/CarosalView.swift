//
//  CarosalView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 14-08-2023.
//

import SwiftUI

struct CarosalView: View {
    // MARK: - Properties
    // Carosal selection
    @State private var selection: Int = 0
    
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    let images = ["carosal 0", "carosal 1", "carosal 2", "carosal 3", "carosal 4"]
    
    
    // MARK: - View
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ForEach(0 ..< images.count, id: \.self) { image in
                    Image(images[image])
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 250)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .overlay (
                // Carosal Index
                HStack {
                    ForEach(0 ..< images.count, id: \.self) { circle in
                        Button(action: {
                            withAnimation {
                                selection = circle
                                print("Circle number \(circle)")
                            }
                        }, label: {
                            Circle()
                                .fill(circle == selection ? Color.pink : Color.white)
                                .frame(width: 7, height: 7)
                                .padding(6)
                        })
                    }
                }
                    .padding(10)
                , alignment: .bottomTrailing
            )
            .onReceive(timer) { _ in
                withAnimation {
                    // Changing carosal
                    if selection < images.count {
                        selection += 1
                    } else if selection == images.count {
                        selection = 0
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 250)
        .aspectRatio(contentMode: .fit)
    }
}

// MARK: - Preview
struct CarosalView_Previews: PreviewProvider {
    static var previews: some View {
        CarosalView()
    }
}
