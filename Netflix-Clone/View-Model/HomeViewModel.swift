//
//  HomeViewModel.swift
//  Netflix-Clone
//
//  Created by Omar Bakry on 01/03/2022.
//

import Foundation

class HomeVM: ObservableObject{
    @Published var movies : [String : [Movie]] = [:]
    
    public var allCategories : [String] {
        return movies.keys.map({String($0)})
    }
    
    public func getMovies (forCat cat : String) -> [Movie]{
        return movies[cat] ?? []
    }
    
    init() {
      setupMovies()
    }
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Popular"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch Now"] = exampleMovies.shuffled()
        movies["Now Playing"] = exampleMovies.shuffled()
    }
}
