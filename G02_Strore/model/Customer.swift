//
//  Customer.swift
//  G02_Strore
//
//  Created by Golnaz Chehrazi - Zahra Shahin on 2023-05-20.
//

import Foundation

class Customer{

    var itemsList : [OwnedItem] = [OwnedItem]()
    var balance: Double = 10.0
    
    func reloadAmount(amount: Double){
        self.balance += amount
    }
    
    func usedItem(id: Int , numMinutes: Int ){
        for item in self.itemsList{
            if(item.id == id){
                item.minutesUsed = numMinutes
            }
        }
    }
    
}
