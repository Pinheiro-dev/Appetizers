//
//  AccountView.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 29/04/24.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)                    
                    Button {
                        print("save")
                    } label: {
                        Text("Save changes")
                    }
                } header: {
                    Text("Personal Info")
                }

                Section {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refiils", isOn: $frequentRefills)
                } header: {
                    Text("Requests")
                }
                    
            }
            .tint(.brandPrimary)
            .navigationTitle("⚙️ Account")
        }
        
    }
}

#Preview {
    AccountView()
}
