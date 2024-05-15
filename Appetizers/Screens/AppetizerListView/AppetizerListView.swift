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
            if viewModel.isLoading {
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
        .alert(
            viewModel.alertItem?.title ?? "Server Error",
            isPresented: .constant(viewModel.alertItem != nil),
            presenting: viewModel.alertItem
        ) { _ in
            Button("Ok") {}
        } message: { item in
            item.message
        }
    }
}

#Preview {
    AppetizerListView()
}
