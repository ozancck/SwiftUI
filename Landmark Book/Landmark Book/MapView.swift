//
//  MapView.swift
//  Landmark Book
//
//  Created by Ozan Çiçek on 18.12.2022.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01 , longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
 
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: izmir.locationCordinates)
    }
}
