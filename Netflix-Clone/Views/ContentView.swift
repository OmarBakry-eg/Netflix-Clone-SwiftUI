//
//  ContentView.swift
//  Netflix-Clone
//
//  Created by Omar Bakry on 01/03/2022.
//

import SwiftUI

struct ContentView: View {
    var hmv = HomeVM()
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView {
                LazyVStack {
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
