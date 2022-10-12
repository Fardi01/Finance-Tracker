//
//  Currency.swift
//  My Finance Tracker
//
//  Created by fardi Issihaka on 11/10/2022.
//

import Foundation

//ici je rajoute le protocole CaseIterable pour pouvoir accèder à toute les valeurs 
enum Currency: String, CaseIterable {
    case dollar = "$"
    case euro = "€"
    case ruble = "₽"
    case sterling = "£"
    case yen = "¥"
    
    var iconName: String {
        switch self {
        case .dollar:
            return "dollarsign.circle"
        case .euro:
            return "eurosign.circle"
        case .ruble:
            return "rublesign.circle"
        case .sterling:
            return "sterlingsign.circle"
        case .yen:
            return "yensign.circle"
        }
    }
    
    var filledIconName: String {
        return "\(iconName).fill"
    }
}
