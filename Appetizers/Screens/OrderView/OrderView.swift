//
//  OrderView.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 29/04/24.
//

import SwiftUI

struct OrderView: View {
    
    @StateObject private var viewModel = OrderViewModel()
    
    var body: some View {
        
        NavigationStack {
            VStack {
                List {
                    ForEach(viewModel.orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: viewModel.deleteItems)
                }
                .listStyle(.plain)
                
                Button {
                    print("order placed")
                } label: {
                    APButton(title: "$99.99 - Place Order")
                }
                .padding(.horizontal, 50)
                .padding(.bottom, 25)
            }
            .navigationTitle("🧾 Orders")
        }
       
    }
}

#Preview {
    OrderView()
}
