//
//  OzelGorselView.swift
//  SuperKahramanlarSwiftUI
//
//  Created by Berat Yavuz on 3.04.2022.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image.resizable()
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: .fit)
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius: 15)
        
    
    }
}

struct OzelGorselView_Previews: PreviewProvider {
    static var previews: some View {
        OzelGorselView(image: Image("superman"))
    }
}
