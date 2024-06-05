//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 04/06/24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContent.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContent.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        print("Changes have been saved successfully")
    }
    
}
