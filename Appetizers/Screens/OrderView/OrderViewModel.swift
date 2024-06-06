//
//  OrderViewModel.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 05/06/24.
//

import SwiftUI

final class OrderViewModel: ObservableObject {
    
    @Published var orderItems = MockData.orderItems
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}
