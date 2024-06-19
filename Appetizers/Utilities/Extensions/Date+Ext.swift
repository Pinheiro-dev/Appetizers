//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 19/06/24.
//

import Foundation

extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYeardAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
