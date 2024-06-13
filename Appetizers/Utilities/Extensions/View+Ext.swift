//
//  View+Ext.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 12/06/24.
//

import SwiftUI

extension View {
    func standardButtonStyleModifier() -> some View {
        self.modifier(StandardButtonStyle())
    }
}
