//
//  Category.swift
//  Toffee
//
//  Created by Md Abir Hossain on 14-08-2023.
//

import Foundation


struct Category: Identifiable {
    let id = UUID().uuidString
    let catLogo: String
    let catName: String
    let catBackgroundImage: String
}


let categories: [Category] = [
    Category(catLogo: "theatermasks", catName: "Web Series", catBackgroundImage: "Web Series"), Category(catLogo: "birthday.cake", catName: "Food", catBackgroundImage: "Food"), Category(catLogo: "play.display", catName: "Drama", catBackgroundImage: "Drama"), Category(catLogo: "camera.badge.ellipsis", catName: "Movies", catBackgroundImage: "Movies"), Category(catLogo: "music.mic.circle", catName: "Music Videos", catBackgroundImage: "Music Videos"), Category(catLogo: "highlighter", catName: "Educational", catBackgroundImage: "Educational"), Category(catLogo: "theatermasks", catName: "Web Series", catBackgroundImage: "Web Series"), Category(catLogo: "birthday.cake", catName: "Food", catBackgroundImage: "Food"), Category(catLogo: "play.display", catName: "Drama", catBackgroundImage: "Drama"), Category(catLogo: "camera.badge.ellipsis", catName: "Movies", catBackgroundImage: "Movies"), Category(catLogo: "music.mic.circle", catName: "Music Videos", catBackgroundImage: "Music Videos"), Category(catLogo: "highlighter", catName: "Educational", catBackgroundImage: "Educational")
]
