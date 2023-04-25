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
    
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium
    
    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"

        var id: Zoom {
            return self
        }
    }
    
    var delta: CLLocationDegrees {
        switch zoom {
        case .near: return 0.02
        case .medium: return 0.2
        case .far: return 2
        }
    }
    
    var body: some View {
//  Replace the default Text view with a Map view that takes a binding to the region.
        Map(coordinateRegion: .constant(region))
//  Add an onAppear view modifier to the map that triggers a calculation of the region based on the current coordinate.
    }
    
    var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
