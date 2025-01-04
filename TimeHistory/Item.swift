//
//  Item.swift
//  TimeHistory
//
//  Created by Yuki Usui on 2025/01/04.
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
