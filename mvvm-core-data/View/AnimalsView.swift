//
//  AnimalsView.swift
//  mvvm-core-data
//
//  Created by Robert Brennan on 2/24/24.
//

import SwiftUI

struct AnimalsView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.animalEntities) { animalEntity in
                HStack {
                    Text("animal: \(animalEntity.animal ?? "")")
                    Spacer()
                    Text("updated: \(animalEntity.updatedAt ?? Date())")
                }
                .padding()
            }
        }
        .id(viewModel.refreshID)    // on older iOS versions, sometimes the view
                                    // does not update after modifying Core Data
                                    // refreshID forces a view refresh
    }
}

//#Preview {
//    AnimalsView()
//}
