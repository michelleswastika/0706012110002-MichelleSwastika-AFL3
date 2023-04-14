//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Michelle Swastika on 14/04/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//  Replace the default Text view with a List, pass the model data’s landmarks array to the List initializer, return a LandmarkRow from the closure.
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
