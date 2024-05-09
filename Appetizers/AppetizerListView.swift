//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 29/04/24.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject private var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationStack {
            if viewModel.appetizers.isEmpty {
                List(MockData.appetizers) { mockAppetizer in
                    AppetizerListCell(appetizer: mockAppetizer)
                }
                .redacted(reason: .placeholder)
                .blinking(duration: viewModel.appetizers.isEmpty ? 0.7 : 0)
                .listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
            } else {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
            }
            
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

#Preview {
    AppetizerListView()
}
