//
//  SmallVerticlaView.swift
//  Netflix-Clone
//
//  Created by Omar Bakry on 09/03/2022.
//

import SwiftUI

struct SmallVerticlaView: View {
    var text:String
  // @Binding var isOn : Bool
    var isOn : Bool
    var isOnImg: String
    var isOffImg : String
    var action : ()-> Void
    
    var imgName : String {
        return isOn ? isOnImg : isOffImg
    }
    var body: some View {
        Button(action: action, label: {
            VStack {
                Image(systemName: imgName)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticlaView_Previews: PreviewProvider {
    static var previews: some View {
        SmallVerticlaView(text: "My List", //isOn: .constant(true),
                          isOn: true,
                          isOnImg: "checkmark", isOffImg: "plus", action: {
            print("Tapped")
        })
    }
}
