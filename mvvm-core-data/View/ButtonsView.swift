//
//  ButtonsView.swift
//  mvvm-core-data
//
//  Created by Robert Brennan on 2/24/24.
//

import SwiftUI

struct ButtonsView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        HStack {
            Button {
                viewModel.addAnimal(animal: "cat")
            } label: {
                Text("Add Cat")
            }
            .padding()
            
            Button {
                viewModel.addAnimal(animal: "dog")
            } label: {
                Text("Add Dog")
            }
            .padding()
            
            Button {
                viewModel.showCoverView = true
            } label: {
                Text("Show CoverView")
            }
            .padding()
        }
    }
}

//#Preview {
//    ButtonsView()
//}
