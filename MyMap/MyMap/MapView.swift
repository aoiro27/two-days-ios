//
//  MapView.swift
//  MyMap
//
//  Created by Yuki Usui on 2025/01/05.
//

import SwiftUI
import MapKit

enum MapType {
    case standard
    case satellite
    case hybrid
}

struct MapView: UIViewRepresentable {
    
    let searchKeyword: String
    let mapType: MapType
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        switch mapType {
        case .standard: uiView.preferredConfiguration = MKStandardMapConfiguration(elevationStyle: .flat)
        case .satellite: uiView.preferredConfiguration = MKImageryMapConfiguration()
        case .hybrid: uiView.preferredConfiguration = MKHybridMapConfiguration()
        }
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(searchKeyword) { placemarks, error in
            guard let placemark = placemarks?.first else { return }
            guard let location = placemark.location else { return }
            print("経度緯度：\(location.coordinate)")
            
            let pin = MKPointAnnotation()
            pin.coordinate = location.coordinate
            pin.title = searchKeyword
            uiView.addAnnotation(pin)
            uiView.region = MKCoordinateRegion(
                center: location.coordinate,
                latitudinalMeters: 500.0,
                longitudinalMeters: 500.0)
        }
    }
    
}

#Preview {
    MapView(searchKeyword: "つくばエキスポセンター", mapType: .standard)
}
