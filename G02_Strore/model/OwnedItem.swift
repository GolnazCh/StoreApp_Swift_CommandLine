//
//  OwnedItem.swift
//  G02_Strore
//
//  Created by Golnaz Chehrazi - Zahra Shahin on 2023-05-20.
//

import Foundation
class OwnedItem: Item{
    var minutesUsed : Int
    
    init(id: Int, title: String, price: Double, minutesUsed: Int) {
        self.minutesUsed = minutesUsed
        super.init(id: id, title: title, price: price)
    }
}
