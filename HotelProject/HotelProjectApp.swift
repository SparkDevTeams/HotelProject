//
//  HotelProjectApp.swift
//  HotelProject
//
//  Created by Joseph Torres on 9/29/21.
//

import SwiftUI
import RealmSwift

let app = RealmSwift.App(id: "application-0-nqldb")

@main
struct HotelProjectApp: SwiftUI.App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
