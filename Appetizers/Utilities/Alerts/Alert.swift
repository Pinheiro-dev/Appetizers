//
//  Alert.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 14/05/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: Text
}

struct AlertContent {
    static let invalidData = AlertItem(
        title: "Server Error",
        message: Text("The data received from the server was invalid. Please contact support.")
    )
    
    static let invalidResponse = AlertItem(
        title: "Server Error",
        message: Text("Invalid response from the server. Please try again later or contact support.")
    )
    
    static let invalidURL = AlertItem(
        title: "Server Error",
        message: Text("There was an issue connecting to the server. If this persists, please contact support.")
    )
    
    static let unableToComplete = AlertItem(
        title: "Server Error",
        message: Text("Unable to complete your request at this time. Please check your internet connection.")
    )
}
