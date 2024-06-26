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
        ZStack {
            NavigationStack {
                if viewModel.isLoading {
                    AppetizerListBlink(appetizers: MockData.appetizers)
                    .navigationTitle("🍟 Appetizers")
                } else {
                    List(viewModel.appetizers) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                            .listRowSeparator(.hidden)
                            .onTapGesture {
                                viewModel.isShowingDetail = true
                                viewModel.selectedAppetizer = appetizer
                            }
                    }
                    .listStyle(.plain)
                    .disabled(viewModel.isShowingDetail)
                    .navigationTitle("🍟 Appetizers")
                    
                }
                
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            .task {
                await viewModel.getAppetizers()
            }
            
            if viewModel.isShowingDetail,
               let selectedAppetizer = viewModel.selectedAppetizer {
                AppetizerDetailView(
                    appetizer: selectedAppetizer,
                    isShowingDetail: $viewModel.isShowingDetail
                )
            }
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
