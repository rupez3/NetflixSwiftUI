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

let exampleVideoURL1 = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")!
let exampleVideoURL2 = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")!
let exampleVideoURL3 = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")!

let exampleImageURL1 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/106")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/107")!

let exampleTrailer1 = Trailer(name: "Season 3 trailer", videoURL: exampleVideoURL1, thumbnailImageURL: exampleImageURL1)
let exampleTrailer2 = Trailer(name: "Dark ", videoURL: exampleVideoURL2, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "Black Friday", videoURL: exampleVideoURL3, thumbnailImageURL: exampleImageURL3)

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
    cast: faker.lorem.words(amount: 4),
    moreLikeThis: exampleMovies,
    trailers: [exampleTrailer1, exampleTrailer2, exampleTrailer3]
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
    cast: faker.lorem.words(amount: 3),
    moreLikeThis: [],
    trailers: []
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
    cast: "mark ruffalo patrick",
    moreLikeThis: [],
    trailers: []
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
    cast: "mark ruffalo patrick",
    moreLikeThis: [],
    trailers: []
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
    cast: "mark ruffalo patrick",
    moreLikeThis: [],
    trailers: []
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
    cast: "mark ruffalo patrick",
    moreLikeThis: [],
    trailers: []
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
    cast: "mark ruffalo patrick",
    moreLikeThis: [],
    trailers: []
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
    cast: "mark ruffalo patrick",
    moreLikeThis: [],
    trailers: []
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
    cast: "mark ruffalo patrick",
    moreLikeThis: [],
    trailers: []
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
    cast: "mark ruffalo patrick",
    moreLikeThis: [],
    trailers: []
)

let exampleEpisodeInfo1 = CurrentEpisodeInfo(
    episodeName: "Pilot",
    description: faker.lorem.sentences(amount: 4),
    season: 1,
    episode: 1
)

var exampleMovies: [Movie] {
    [
        exampleMovie4,
        exampleMovie5,
        exampleMovie6,
        exampleMovie8,
        exampleMovie9,
        exampleMovie10,
    ].shuffled()
}

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
