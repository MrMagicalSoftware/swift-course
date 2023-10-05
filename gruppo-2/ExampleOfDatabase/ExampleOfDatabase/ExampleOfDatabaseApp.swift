//
//  ExampleOfDatabaseApp.swift
//  ExampleOfDatabase
//
//  Created by mr on 05/10/23.
//

import SwiftUI

@main
struct ExampleOfDatabaseApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
