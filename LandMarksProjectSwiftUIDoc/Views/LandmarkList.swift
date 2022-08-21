//
//  LandmarkList.swift
//  LandMarksProjectSwiftUIDoc
//
//  Created by Ömer Faruk Kılıçaslan on 21.08.2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink {
                    DetailView(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }

            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                   LandmarkList()
                       .previewDevice(PreviewDevice(rawValue: deviceName))
                       .previewDisplayName(deviceName)
               }

    }
}
