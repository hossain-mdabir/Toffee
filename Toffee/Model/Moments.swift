//
//  Moments.swift
//  Toffee
//
//  Created by Md Abir Hossain on 16-08-2023.
//

import Foundation

struct Moments: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let momentTitle: String
}


// MARK: - Demo Data
let moments: [Moments] = [
    Moments(imageName: "moment 0", momentTitle: "Sea Fish"), Moments(imageName: "moment 1", momentTitle: "Human Talking"), Moments(imageName: "moment 2", momentTitle: "Madrasa Children"), Moments(imageName: "moment 3", momentTitle: "Riding in Road"), Moments(imageName: "moment 4", momentTitle: "Working in Field"), Moments(imageName: "moment 5", momentTitle: "Rickshaw")
]
