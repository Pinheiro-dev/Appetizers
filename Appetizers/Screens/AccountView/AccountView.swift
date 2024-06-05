//
//  AccountView.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 29/04/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save changes")
                    }
                } header: {
                    Text("Personal Info")
                }

                Section {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refiils", isOn: $viewModel.frequentRefills)
                } header: {
                    Text("Requests")
                }
                    
            }
            .tint(.brandPrimary)
            .navigationTitle("⚙️ Account")
        }
        .alert(
            viewModel.alertItem?.title ?? "Error",
            isPresented: .constant(viewModel.alertItem != nil),
            presenting: viewModel.alertItem
        ) { _ in
            Button("Ok") {}
        } message: { item in
            item.message
        }
    }
    
}

#Preview {
    AccountView()
}
