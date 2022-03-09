//
//  GlobalHelperStruct.swift
//  Netflix-Clone
//
//  Created by Omar Bakry on 01/03/2022.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", imageURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
private let exampleMovie2 = Movie(id: UUID().uuidString, name: "THOR", imageURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
private let exampleMovie3 = Movie(id: UUID().uuidString, name: "ENDGAME", imageURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
private let exampleMovie4 = Movie(id: UUID().uuidString, name: "HAWZEN", imageURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
private let exampleMovie5 = Movie(id: UUID().uuidString, name: "SUIT", imageURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
private let exampleMovie6 = Movie(id: UUID().uuidString, name: "COFFEE", imageURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
    
    var exampleMovies: [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]


extension LinearGradient {
    static let blackOpacityGradient =  LinearGradient(colors: [
        Color.black.opacity(0.0),Color.black.opacity(0.95)
    ], startPoint: .top, endPoint: .bottom)
}
