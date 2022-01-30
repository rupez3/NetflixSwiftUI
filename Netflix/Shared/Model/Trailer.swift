//
//  Trailer.swift
//  Netflix (iOS)
//
//  Created by Rupesh Chhetri on 1/30/22.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
