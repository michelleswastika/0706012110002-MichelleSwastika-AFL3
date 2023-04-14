//
//  MapView.swift
//  Landmarks
//
//  Created by Michelle Swastika on 11/04/23.
//

import SwiftUI
import MapKit

struct MapView: View {
//  Add a coordinate property to MapView and update the preview provider to pass a fixed coordinate.
    var coordinate: CLLocationCoordinate2D
//  Create a private state variable that holds the region information for the map.
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
//  Replace the default Text view with a Map view that takes a binding to the region.
        Map(coordinateRegion: $region)
//  Add an onAppear view modifier to the map that triggers a calculation of the region based on the current coordinate.
            .onAppear {
                setRegion(coordinate)
            }
    }
//  Add a method that updates the region based on a coordinate value.
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
