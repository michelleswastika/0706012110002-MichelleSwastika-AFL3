//
//  CircleImage.swift
//  Landmarks
//
//  Created by Michelle Swastika on 11/04/23.
//

import SwiftUI

struct CircleImage: View {
//  Add a stored image property to CircleImage.
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
//  Create another circle with a gray stroke, and then add it as an overlay to give the image a border.
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
