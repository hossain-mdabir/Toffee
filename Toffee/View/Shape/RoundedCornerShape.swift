//
//  RoundedCornerShape.swift
//  Watch Screens
//
//  Created by Md Abir Hossain on 21-07-2023.
//

import SwiftUI

// MARK: - Radious Modifier
struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
