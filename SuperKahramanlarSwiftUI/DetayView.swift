//
//  DetayView.swift
//  SuperKahramanlarSwiftUI
//
//  Created by Berat Yavuz on 3.04.2022.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman:Superkahraman
    var body: some View {
        VStack{
  
            MapView(coordinate: secilenKahraman.koordinatLokasyonu).frame( height: UIScreen.main.bounds.height*0.3).edgesIgnoringSafeArea(.top)
            
            OzelGorselView(image: Image(secilenKahraman.gorselIsmi)).frame(width: UIScreen.main.bounds.width * 0.9 , height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.25).padding(UIScreen.main.bounds.height * 0.13)
      
        
            VStack{
                VStack{
                    Text(secilenKahraman.isim).font(.title).bold()
                    Text(secilenKahraman.sehir).font(.title2).foregroundColor(.blue).bold()
                    Spacer()
                    
                    Text(secilenKahraman.gercekIsim).font(.title).bold()
                    Text(secilenKahraman.meslek).font(.title2).foregroundColor(.orange).bold()
                    
                }.padding().offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: -200.0)
              
                    
                
            }.padding().offset( y: UIScreen.main.bounds.height * -0.1)
        
       
        
        }
       
        
        
        
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: batman)
    }
}
