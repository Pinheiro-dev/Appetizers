//
//  Appetizer.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 07/05/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let samppleAppetizer = Appetizer(
        id: 0001,
        name: "Test Appetizer",
        description: "This is description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let appetizers = [
        samppleAppetizer,
        samppleAppetizer,
        samppleAppetizer,
        samppleAppetizer,
        samppleAppetizer,
        samppleAppetizer,
        samppleAppetizer,
        samppleAppetizer,
        samppleAppetizer,
        samppleAppetizer,
    ]
}
