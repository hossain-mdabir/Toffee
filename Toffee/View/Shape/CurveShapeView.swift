//
//  CurveShapeView.swift
//  Tab Bar
//
//  Created by Md Abir Hossain on 13-08-2023.
//

import SwiftUI

struct CurveShapeView: View {
    // MARK: - Properties
    var foregroundColor: Color
    var shadowColor: Color
    
    // MARK: - Body
    var body: some View {
        
            Path { path in
                
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.width,  y: 0))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.width,  y:  UIScreen.main.bounds.height / 10.65))
                
                path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 10.65), radius: UIScreen.main.bounds.width /  11.3, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
                path.addLine(to: CGPoint(x: 0, y: UIScreen.main.bounds.height / 10.65))
            }
            .fill(foregroundColor)
            .rotationEffect(.init(degrees: 180))
            .shadow(color: Color.gray.opacity(0.3), radius: 3, x: 0, y: -2)
            .shadow(color: Color.white, radius: 10, x: 0, y: 10)
            .overlay(content: {
                VStack {
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "bolt")
                            .font(.title3.weight(.bold))
                            .foregroundColor(Color.white)
                            .frame(width: UIScreen.main.bounds.width / 6.6, height:  UIScreen.main.bounds.width / 6.6, alignment: .center)
                    }
                    .background(Color.green)
                    .clipShape(Circle())
                    
                }.padding(.bottom, UIScreen.main.bounds.height /  8)
            }
            )
        
        .ignoresSafeArea(.all)
    }
}

// MARK: - Preview
struct CurveShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CurveShapeView(foregroundColor: Color.white, shadowColor: Color.gray)
    }
}
