//
//  AppetizerListBlink.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 12/06/24.
//

import SwiftUI

struct AppetizerListBlink: View {
    
    let appetizers: [Appetizer]
    
    var body: some View {
        List(appetizers) { appetizer in
            AppetizerListCell(appetizer: appetizer)
                .listRowSeparator(.hidden)
        }
        .redacted(reason: .placeholder)
        .blinking(duration: 0.7)
        .listStyle(.plain)
    }
}

#Preview {
    AppetizerListBlink(appetizers: MockData.appetizers)
}
