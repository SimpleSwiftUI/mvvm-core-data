//
//  mvvm_core_dataApp.swift
//  mvvm-core-data
//
//  Created by Robert Brennan on 2/24/24.
//

import SwiftUI

@main
struct mvvm_core_dataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
