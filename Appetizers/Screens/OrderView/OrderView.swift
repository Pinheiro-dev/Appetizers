//
//  OrderView.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 29/04/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.delete)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.horizontal, 50)
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
}

#Preview {
    OrderView()
}
