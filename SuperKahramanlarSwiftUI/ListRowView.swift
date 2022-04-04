//
//  ListRowView.swift
//  SuperKahramanlarSwiftUI
//
//  Created by Berat Yavuz on 4.04.2022.
//

import SwiftUI

struct ListRowView: View {
    var superkahraman:Superkahraman
    var body: some View {
        HStack{
            Image(superkahraman.gorselIsmi).resizable().aspectRatio(contentMode: .fit).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
            VStack{
            Text(superkahraman.isim).bold().font(.title2)
        
                Text(superkahraman.gercekIsim).bold().font(.title3).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
            
        }.offset(x: -50.0)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(superkahraman: batman)
    }
}
