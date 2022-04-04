//
//  ContentView.swift
//  SuperKahramanlarSwiftUI
//
//  Created by Berat Yavuz on 3.04.2022.
//

import SwiftUI

struct ListeView: View {
    
    
    var body: some View {
        NavigationView{
            List(superkahramanDizisi){superkahraman in
                NavigationLink(
                    destination: DetayView(secilenKahraman: superkahraman),
                    label: {
                        ListRowView(superkahraman: superkahraman)
                    })
                
                
            }
            
            
            
        }.navigationTitle("Superkahramanlar")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
