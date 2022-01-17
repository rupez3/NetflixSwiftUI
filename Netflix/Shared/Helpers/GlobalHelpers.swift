//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import Foundation
import SwiftUI
import Fakery

// Mostly for testing

let faker = Faker(locale: "nb-NO")

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Foundation",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 3,
    promotionHeadline: "Watch it soon!",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: faker.lorem.words(amount: 3),
    cast: faker.lorem.words(amount: 4)
)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Invasion",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Cool", "Exciting", "Recommended"], year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 6,
    promotionHeadline: "New coming soon",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: faker.lorem.words(amount: 3)
)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "The Nevers",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 9,
    promotionHeadline: "Recommeneded",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: "mark ruffalo patrick"
)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: "mark ruffalo patrick"
)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Space",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: "mark ruffalo patrick"
)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Mummy",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: "mark ruffalo patrick"
)
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Cars",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: "mark ruffalo patrick"
)
let exampleMovie8 = Movie(
    id: UUID().uuidString,
    name: "Prometheus",
    thumbnailURL: URL(string: "https://picsum.photos/200/307")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 8,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: "mark ruffalo patrick"
)
let exampleMovie9 = Movie(
    id: UUID().uuidString,
    name: "2012",
    thumbnailURL: URL(string: "https://picsum.photos/200/308")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 7,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: "mark ruffalo patrick"
)
let exampleMovie10 = Movie(
    id: UUID().uuidString,
    name: "Extraction",
    thumbnailURL: URL(string: "https://picsum.photos/200/309")!,
    categories: ["Cool", "Exciting", "Recommended"],
    year: 2012,
    rating: "TV/MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "lore ipsom",
    cast: "mark ruffalo patrick"
)

let exampleEpisodeInfo1 = CurrentEpisodeInfo(
    episodeName: "Pilot",
    description: faker.lorem.sentences(amount: 4),
    season: 1,
    episode: 1
)

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

extension String {
    
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttr = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttr)
        return size.width
    }
    
}
