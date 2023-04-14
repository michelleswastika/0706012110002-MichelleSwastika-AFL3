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
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
//  Add an imageName property to read the name of the image from the data, and a computed image property that loads an image from the asset catalog.
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
// Add a coordinates property to the structure using a nested Coordinates type that reflects the storage in the JSON data structure.
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
