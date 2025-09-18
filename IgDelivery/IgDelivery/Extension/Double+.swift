//
//  Double+.swift
//  IgDelivery
//
//  Created by labstation on 01/07/25.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
