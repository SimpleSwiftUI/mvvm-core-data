//
//  ContentView.swift
//  mvvm-core-data
//
//  Created by Robert Brennan on 2/24/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        VStack {
            ButtonsView()
            
            AnimalsView()
        }
        .fullScreenCover(isPresented: $viewModel.showCoverView, content: {
            CoverView()
        })
    }
}

//#Preview {
//    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//}
