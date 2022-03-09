//
//  WhiteButton.swift
//  Netflix-Clone
//
//  Created by Omar Bakry on 09/03/2022.
//

import SwiftUI

struct WhiteButton: View {
    var text , imageName : String
    var action : ()-> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack{
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical,6)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton(text: "Play", imageName: "play.fill",action: {})
    }
}
