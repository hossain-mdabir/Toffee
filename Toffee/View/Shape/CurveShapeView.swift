//
//  CurveShapeView.swift
//  Tab Bar
//
//  Created by Md Abir Hossain on 13-08-2023.
//

import SwiftUI

struct CurveShapeView: View {
    var foregroundColor: Color
    var shadowColor: Color
    var body: some View {
        Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 80))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 80), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 80))
        }
        .fill(foregroundColor)
//        .fill(Color.red)
       .rotationEffect(.init(degrees: 180))
        .shadow(color: Color.gray.opacity(0.3), radius: 3, x: 0, y: -2)
        .shadow(color: Color.white, radius: 10, x: 0, y: 10)
    }
}

struct CurveShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CurveShapeView(foregroundColor: Color.white, shadowColor: Color.gray)
    }
}
