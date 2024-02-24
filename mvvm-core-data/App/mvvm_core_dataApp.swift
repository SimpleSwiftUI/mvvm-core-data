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
    @StateObject var viewModel: ViewModel

    init() {
        let context = persistenceController.container.viewContext
        _viewModel = StateObject(wrappedValue: ViewModel(context: context))
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                // .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(viewModel)
        }
    }
}
