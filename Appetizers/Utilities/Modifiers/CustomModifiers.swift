//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 12/06/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.accent)
            .controlSize(.large)
    }
}
