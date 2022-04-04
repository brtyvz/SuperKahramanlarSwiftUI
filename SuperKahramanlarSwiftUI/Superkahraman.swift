//
//  Superkahramam.swift
//  SuperKahramanlarSwiftUI
//
//  Created by Berat Yavuz on 3.04.2022.
//

import Foundation
import CoreLocation

struct Superkahraman:Identifiable{
    var id = UUID()
    var isim : String
    var gercekIsim:String
    var  gorselIsmi:String
    var sehir:String
    var meslek:String
    var koordinat:Koordinat
    
    var koordinatLokasyonu:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
        
    }
    
}

struct Koordinat{
    
    var latitude:Double
    var longitude:Double

}
 
let batman = Superkahraman(isim: "Batman", gercekIsim: "Bruce Wayne", gorselIsmi: "batman", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 41.0, longitude: -87.0))
let superman = Superkahraman(isim: "Superman", gercekIsim: "Clarke Kent", gorselIsmi: "superman", sehir: "Metropolis", meslek: "Gazeteci", koordinat: Koordinat(latitude: 39.0865207, longitude: -94.7089592))
let spiderman = Superkahraman(isim: "Spiderman", gercekIsim: "Peter Parker", gorselIsmi: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40, longitude: -74.0))
let ironman = Superkahraman(isim: "Ironman", gercekIsim: "Tony Stark", gorselIsmi: "ironman", sehir: "Los angeles", meslek: "İş adamı", koordinat: Koordinat(latitude: 33.0, longitude: -118.0))

let superkahramanDizisi = [batman,superman,spiderman,ironman]
