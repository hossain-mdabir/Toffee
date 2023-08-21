//
//  ShimmerEffectView.swift
//  Toffee
//
//  Created by Md Abir Hossain on 21-08-2023.
//

import SwiftUI

struct ShimmerEffectView: View {
    // MARK: - Properties
    @State private var isAnimation: Bool = false

    private var gradientColors = [
        Color(uiColor: UIColor.systemGray5),
        Color(uiColor: UIColor.systemGray6),
        Color(uiColor: UIColor.systemGray5)
    ]

    @State var startPoint: UnitPoint = .init(x: -1.8, y: -1.2)
    @State var endPoint: UnitPoint = .init(x: 0, y: -0.2)

    // MARK: - Body
    var body: some View {
        LinearGradient(colors: gradientColors, startPoint: startPoint, endPoint: endPoint)
            .onAppear(perform: {
                withAnimation(.easeOut(duration: 1).repeatForever(autoreverses: false)) {
//                    isAnimation.toggle()
                    startPoint = .init(x: 1, y: 1)
                    endPoint = .init(x: 2.2, y: 2.2)

                }
            })
    }
}

// MARK: - Preview
struct ShimmerEffectView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerEffectView()
    }
}
