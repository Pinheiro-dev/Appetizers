//
//  Image+Ext.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 13/06/24.
//

import SwiftUI

extension Image {
    func listCellImageStyle() -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
