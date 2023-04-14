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
//  Replace the text view with the image of landmarks by using the Image(_:) initializer, passing it the name of the image to display.
        image
//  Add a call to clipShape(Circle()) to apply the circular clipping shape to the image.
            .clipShape(Circle())
//  Create another circle with a gray stroke, and then add it as an overlay to give the image a border.
            .overlay {
//  Switch the border color to white.
                Circle().stroke(.white, lineWidth: 4)
            }
//  Add a shadow with a 7 point radius.
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
