//
//  CoverView.swift
//  mvvm-core-data
//
//  Created by Robert Brennan on 2/24/24.
//

import SwiftUI

struct CoverView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("CoverView()")
                .padding()
            
            Button {
                viewModel.showCoverView = false
            } label: {
                Text("Close")
            }
            .padding()
        }
    }
}

//#Preview {
//    CoverView()
//}
