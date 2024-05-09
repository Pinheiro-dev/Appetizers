//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 08/05/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [weak self] in
                switch result {
                    case .success(let appetizers):
                        self?.appetizers = appetizers
                    case .failure(let error):
                        print(error.localizedDescription)
                }
            }
        }
    }
    
}
