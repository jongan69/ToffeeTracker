/*
See LICENSE folder for this sample’s licensing information.
Abstract:
The entry point for the CoffeeTraker app.
*/

import SwiftUI

@main
struct CoffeeTrackerApp: App {
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
