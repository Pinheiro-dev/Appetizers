//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 08/05/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                switch result {
                    case .success(let appetizers):
                        self.appetizers = appetizers
                    case .failure(let error):
                        switch error {
                            case .invalidResponse:
                                self.alertItem = AlertContent.invalidResponse
                            case .invalidURL:
                                self.alertItem = AlertContent.invalidURL
                            case .invalidData:
                                self.alertItem = AlertContent.invalidData
                            case .unableToComplete:
                                self.alertItem = AlertContent.unableToComplete
                        }
                        print(error.localizedDescription)
                }
            }
        }
    }
    
}
