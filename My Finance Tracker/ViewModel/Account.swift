//
//  Account.swift
//  My Finance Tracker
//
//  Created by fardi Issihaka on 11/10/2022.
//

import Foundation

struct Account: Identifiable {
    let id = UUID()
    let iconName: String
    let name: String
    let amount: Double
}

extension Account {
    static let sampleData: [Account] = [
        Account(iconName: "icon_001", name: "Compte Courant", amount: 150.00),
        Account(iconName: "icon_002", name: "PayPal", amount: 230.30),
        Account(iconName: "icon_003", name: "Vacances", amount: 50.10)
    ]
}
