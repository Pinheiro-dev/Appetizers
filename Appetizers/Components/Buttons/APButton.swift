//
//  APButton.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 21/05/24.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .foregroundStyle(.white)
            .background(.accent)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .colorScheme(.light)
    }
}

#Preview {
    APButton(title: "Test title")
}
