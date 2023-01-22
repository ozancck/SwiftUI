//
//  LandMarkModel.swift
//  Landmark Book
//
//  Created by Ozan Çiçek on 18.12.2022.
//

import Foundation
import MapKit
import CoreLocation

struct LandMarkModel : Identifiable {
    
    var id = UUID()
    var placeName : String
    var detail : String
    var imageName : String
    var latitude : CLLocationDegrees
    var longitude : CLLocationDegrees
    
    var locationCordinates : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }

}

let istanbul = LandMarkModel(placeName: "Istanbul", detail: "Salammm", imageName: "istanbul", latitude: 37.334_900, longitude: -122.009_020)
let ankara = LandMarkModel(placeName: "Ankara", detail: "sosiisss", imageName: "ankara", latitude: 334_900, longitude: -122.009_020)
let izmir  = LandMarkModel(placeName: "Izmir", detail: "sosiisss", imageName:"izmir", latitude: 37.334_900, longitude: -122.009_020)

let antalya = LandMarkModel(placeName: "Antalya", detail: "deniz kum gines ", imageName: "antalya", latitude: 334_900, longitude: 37.334_900)

let places = [izmir, ankara, istanbul, antalya]
