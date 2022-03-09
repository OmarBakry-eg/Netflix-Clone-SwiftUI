//
//  TopMoviePreview.swift
//  Netflix-Clone
//
//  Created by Omar Bakry on 09/03/2022.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie : Movie
    func isLastCat(_ cat: String) -> Bool{
//        let catCount = movie.categories.count
//
//        if let index = movie.categories.firstIndex(of: cat){
//            if index + 1 != catCount{
//                return false
//            }
//        }
//        return true
        
      return cat == movie.categories.last
    }
    @State private var isOn : Bool = false
    var body: some View {
        ZStack {
            KFImage(movie.imageURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack{
                    ForEach(movie.categories,id: \.self) { cat in
                        HStack {
                            Text(cat)
                            if(!isLastCat(cat)){
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                          
                        }
                    }
                }
                Spacer().frame(height: 20)
                HStack{
                    Spacer()
                    SmallVerticlaView(text: "MyList", //isOn: $isOn,
                                      isOn:isOn,
                                      isOnImg: "checkmark", isOffImg: "plus", action: {
                        isOn = !isOn
                    })
                    Spacer()
                    WhiteButton(text: "Play", imageName: "play.fill", action: {}).frame(width: 120)
                    Spacer()
                    SmallVerticlaView(text: "Info", //isOn: $isOn,
                                      isOn:isOn,
                                      isOnImg: "info.circle", isOffImg: "info.circle", action: {
                        //isOn = !isOn
                    })
                    Spacer()
                }
                Spacer().frame(height: 10)
            }
            .background(
                LinearGradient.blackOpacityGradient
            )
            .padding(.top,250)
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
