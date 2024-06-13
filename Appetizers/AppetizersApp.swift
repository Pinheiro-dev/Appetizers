//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 29/04/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
