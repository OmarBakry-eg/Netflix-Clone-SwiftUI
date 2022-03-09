//
//  ContentView.swift
//  Netflix-Clone
//
//  Created by Omar Bakry on 01/03/2022.
//

import SwiftUI

struct ContentView: View {
    var hmv = HomeVM()
    let screen = UIScreen.main.bounds
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top,-110) //push it up
                        .zIndex(-1) // upper hstack will never appear without it because we're in zstack and it's zindex will auto assigned to is children in assecnding order so if we make that -1 and the above it will be 0
                    ForEach(hmv.allCategories,id: \.self){cat in
                        VStack{
                            HStack{
                        Text(cat).font(.title3).bold()
                        Spacer()
                            }
                            
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack{
                                    ForEach(hmv.getMovies(forCat: cat)){ movie in
                                        StandardHomeViewMovie(movie: movie).frame(width: 100, height: 200).padding(.horizontal,20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

