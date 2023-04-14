//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Michelle Swastika on 14/04/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//  Embed the dynamically generated list of landmarks in a NavigationView.
        NavigationView {
//  Replace the default Text view with a List, pass the model data’s landmarks array to the List initializer, return a LandmarkRow from the closure.
            List(landmarks) { landmark in
//  Inside the list’s closure, wrap the returned row in a NavigationLink, specifying the LandmarkDetail view as the destination.
                NavigationLink {
//  Pass the current landmark to the destination LandmarkDetail.
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
//  Call the navigationTitle(_:) modifier method to set the title of the navigation bar when displaying the list.
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//  Within the list preview, embed the LandmarkList in a ForEach instance, using an array of device names as the data.
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
//  Start by changing the current list preview to render at the size of an iPhone SE.
                .previewDevice(PreviewDevice(rawValue: deviceName))
//  Use the previewDisplayName(_:) modifier to add the device names as labels for the previews.
                .previewDisplayName(deviceName)
        }
    }
}
