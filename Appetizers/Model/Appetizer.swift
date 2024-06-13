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
    
    static let appetizers: [Appetizer] = {
        var items: [Appetizer] = []
        for index in 0...9 {
            items.append(
                .init(
                    id: index + 1,
                    name: "Test Appetizer",
                    description: "This is description for my appetizer. It's yummy.",
                    price: 9.99,
                    imageURL: "",
                    calories: 99,
                    protein: 99,
                    carbs: 99
                )
            )
        }
        return items
    }()
    
    static let orderItemOne = Appetizer(
        id: 0001,
        name: "Test Appetizer One",
        description: "This is description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let orderItemTwo = Appetizer(
        id: 0002,
        name: "Test Appetizer Two",
        description: "This is description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let orderItemThree = Appetizer(
        id: 0003,
        name: "Test Appetizer Three",
        description: "This is description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree] 
}
