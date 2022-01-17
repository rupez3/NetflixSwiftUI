//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import Foundation
import SwiftUI

// Mostly for testing

let exampleMovie1 = Movie(id: UUID().uuidString, name: "Foundation", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Invasion", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "The Nevers", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Space", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Mummy", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie7 = Movie(id: UUID().uuidString, name: "Cars", thumbnailURL: URL(string: "https://picsum.photos/200/306")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie8 = Movie(id: UUID().uuidString, name: "Prometheus", thumbnailURL: URL(string: "https://picsum.photos/200/307")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie9 = Movie(id: UUID().uuidString, name: "2012", thumbnailURL: URL(string: "https://picsum.photos/200/308")!, categories: ["Cool", "Exciting", "Recommended"])
let exampleMovie10 = Movie(id: UUID().uuidString, name: "Extraction", thumbnailURL: URL(string: "https://picsum.photos/200/309")!, categories: ["Cool", "Exciting", "Recommended"])

let exampleMovies = [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
]

extension LinearGradient {
    
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.96)]),
        startPoint: .top,
        endPoint: .bottom
    )
    
}
