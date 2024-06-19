//
//  AccountView.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 29/04/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)
                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.done)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker(
                        "Birthday",
                        selection: $viewModel.user.birthdate,
                        in: Date().oneHundredTenYeardAgo...Date().eighteenYearsAgo,
                        displayedComponents: .date
                    )
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save changes")
                    }
                } header: {
                    Text("Personal Info")
                }

                Section {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refiils", isOn: $viewModel.user.frequentRefills)
                } header: {
                    Text("Requests")
                }
                    
            }
            .navigationTitle("⚙️ Account")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Dismiss") {
                        focusedTextField = nil
                    }
                }
            }
            
        }
        .onAppear {
            viewModel.retrieveUser()
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
