//
//  HomeVM.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import Foundation

class HomeVM: ObservableObject {
    
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0) })
    }
    
    init() {
        setupMovies()
    }
    
    public func getMovies(for category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Sci Fi"] = [exampleMovie3, exampleMovie4, exampleMovie5]
        movies["Action"] = [exampleMovie6, exampleMovie7, exampleMovie8]
    }
    
}
