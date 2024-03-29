//
//  ModelData.swift
//  Landmarks
//
//  Created by Michelle Swastika on 14/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

// Define a Landmark structure with a few properties matching names of some of the keys in the landmarkData.json data file.
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    //  In Landmark.swift, add a Category enumeration and a category property to the Landmark structure.
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    //  Add an imageName property to read the name of the image from the data, and a computed image property that loads an image from the asset catalog.
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    //  Add a computed property to the Landmark structure that returns the feature image, if it exists.
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    // Add a coordinates property to the structure using a nested Coordinates type that reflects the storage in the JSON data structure.
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
