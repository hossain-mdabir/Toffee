//
//  ToffeeApp.swift
//  Toffee
//
//  Created by Md Abir Hossain on 14-08-2023.
//

import SwiftUI

@main
struct ToffeeApp: App {
    var body: some Scene {
        WindowGroup {
            HomeScreenView()
                .redacted(reason: .placeholder)
                .shimmerEffect()
        }
    }
}



struct ShimmerEffectModifier: ViewModifier {
    @State private var isAnimating = false
    
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            content
                .mask(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [Color.clear, Color.white.opacity(0.5), Color.clear]
                        ),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .frame(width: geometry.size.width * 3)
                    .offset(x: self.isAnimating ? -geometry.size.width : geometry.size.width)
                )
                .onAppear {
                    withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: true)) {
                        self.isAnimating = true
                    }
                }
        }
    }
}

extension View {
    func shimmerEffect() -> some View {
        self.modifier(ShimmerEffectModifier())
    }
}


struct ShimmerEffectModifier2: ViewModifier {
    // MARK: - Properties
    @State private var isAnimation: Bool = false

    private var gradientColors = [
        Color(uiColor: UIColor.systemGray5),
        Color(uiColor: UIColor.systemGray6),
        Color(uiColor: UIColor.systemGray5)
    ]

    @State var startPoint: UnitPoint = .init(x: -1.8, y: -1.2)
    @State var endPoint: UnitPoint = .init(x: 0, y: -0.2)
    
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            content
                .mask(
                    LinearGradient(colors: gradientColors, startPoint: startPoint, endPoint: endPoint)
                        .onAppear(perform: {
                            withAnimation(.easeOut(duration: 1).repeatForever(autoreverses: false)) {
//                    isAnimation.toggle()
                                startPoint = .init(x: 1, y: 1)
                                endPoint = .init(x: 2.2, y: 2.2)
                            }
                        })
                )
                .onAppear {
                    withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: true)) {
                        self.isAnimation = true
                    }
                }
        }
    }
}

extension View {
    func shimmerEffect2() -> some View {
        self.modifier(ShimmerEffectModifier2())
    }
}
