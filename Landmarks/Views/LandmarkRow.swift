//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Michelle Swastika on 14/04/23.
//

import SwiftUI

struct LandmarkRow: View {
//  Add landmark as a stored property of LandmarkRow.
    var landmark: Landmark
    
    var body: some View {
//  Embed the existing text view in an HStack.
        HStack {
//  Complete the row by adding an image before the text view, and a spacer after it.
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
//  Modify the text view to use the landmark property’s name.
            Text(landmark.name)
        }
    }
}

// In the previews static property of LandmarkRow_Previews, add the landmark parameter to the LandmarkRow initializer, specifying the first element of the landmarks array.
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
//  Wrap the returned row in a Group
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
//  Use the previewLayout(_:) modifier to set a size that approximates a row in a list.
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
