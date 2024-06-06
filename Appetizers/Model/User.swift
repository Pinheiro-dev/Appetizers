//
//  User.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 05/06/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
