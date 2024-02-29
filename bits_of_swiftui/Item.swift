//
//  Item.swift
//  bits_of_swiftui
//
//  Created by Chhewang Sherpa on 29/02/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
