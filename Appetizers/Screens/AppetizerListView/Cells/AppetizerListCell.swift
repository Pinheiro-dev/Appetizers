//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 08/05/24.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack(spacing: 20) {
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            // AsyncImage para quando não precisar de cache
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .listCellImageStyle()
            } placeholder: {
                Image("food-placeholder")
                    .listCellImageStyle()
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
            .padding(.leading, 5)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.samppleAppetizer)
}
