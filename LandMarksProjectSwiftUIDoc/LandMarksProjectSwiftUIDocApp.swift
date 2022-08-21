//
//  LandMarksProjectSwiftUIDocApp.swift
//  LandMarksProjectSwiftUIDoc
//
//  Created by Ömer Faruk Kılıçaslan on 18.08.2022.
//

import SwiftUI

@main
struct LandMarksProjectSwiftUIDocApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
