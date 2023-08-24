//
//  EditorsChoice.swift
//  Toffee
//
//  Created by Md Abir Hossain on 16-08-2023.
//

import Foundation


struct EditorsChoice: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let seriesTitle: String
    let duration: String
    let totalView: String
    let totalViewTime: String
}


// MARK: - Demo Data
let editorsChoices: [EditorsChoice] = [
    EditorsChoice(imageName: "editor", seriesTitle: "Alp Arslan The Great Seljuk | Episode 60 | Season 2", duration: "45.03", totalView: "22.2k", totalViewTime: "22h"), EditorsChoice(imageName: "editor 1", seriesTitle: "Episode 56 | Dirilis Ertugul | ertugul season 1", duration: "45.03", totalView: "44.4k", totalViewTime: "22h"), EditorsChoice(imageName: "editor 2", seriesTitle: "Episode 138 | Kurulus Osman | Season 3", duration: "37.29", totalView: "425.7k", totalViewTime: "1m")
]

