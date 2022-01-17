//
//  Episode.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import Foundation

struct Episode: Identifiable {
    
    var id = UUID().uuidString
    
    var name: String
    
    var season: Int
    
    var thumbnailImageUrlString: String
    
    var description: String
    
    var length: Int
    
    var thumbnailImageURL: URL {
        return URL(string: thumbnailImageUrlString)!
    }
    
}
