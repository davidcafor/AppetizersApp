//
//  AppetizerListView.swift
//  AppetizersApp
//
//  Created by David Cardeña on 18/4/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }.onAppear {
            viewModel.getAppetizers()
        }
    }
}

#Preview {
    AppetizerListView()
}
