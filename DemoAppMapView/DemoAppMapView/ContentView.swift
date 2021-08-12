//
//  ContentView.swift
//  DemoAppMapView
//
//  Created by IOSDEV1 on 11/08/21.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}


struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 22.4707, longitude: 70.0577), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    let annotations = [
            City(name: "Jamnagar", coordinate: CLLocationCoordinate2D(latitude: 22.4707, longitude: 70.0577)),
            City(name: "Ahmedabad", coordinate: CLLocationCoordinate2D(latitude: 23.0225, longitude: 72.5714)),
        ]
    
    var body: some View {
        
        Map(coordinateRegion: $region, annotationItems: annotations) {
                    MapPin(coordinate: $0.coordinate)
                }
                .frame(width: 400, height: 900)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
