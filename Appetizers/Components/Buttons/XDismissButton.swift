//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 21/05/24.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        Image(systemName: "xmark")
           .imageScale(.small)
           .frame(width: 30, height: 30)
           .foregroundStyle(.black)
           .background(
               Circle()
                   .foregroundStyle(.white)
                   .opacity(0.6)
           )
           .padding(5)
    }
}

#Preview {
    XDismissButton()
}
