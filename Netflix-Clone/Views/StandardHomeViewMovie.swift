//
//  StandardHomeViewMovie.swift
//  Netflix-Clone
//
//  Created by Omar Bakry on 01/03/2022.
//

import SwiftUI
import Kingfisher

struct StandardHomeViewMovie: View {
    var movie : Movie
    var body: some View {
        KFImage(movie.imageURL).resizable().scaledToFill()
    }
}

struct StandardHomeViewMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeViewMovie(movie: exampleMovie1)
    }
}
