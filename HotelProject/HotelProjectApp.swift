//
//  HotelProjectApp.swift
//  HotelProject
//
//  Created by Joseph Torres on 9/29/21.
//

import SwiftUI

@main
struct HotelProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
