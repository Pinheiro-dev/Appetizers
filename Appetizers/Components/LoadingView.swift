//
//  LoadingView.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 14/05/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            ProgressView()

        }
    }
}

#Preview {
    LoadingView()
}
