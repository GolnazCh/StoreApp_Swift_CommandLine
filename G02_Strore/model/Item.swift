//
//  Item.swift
//  G02_Strore
//
//  Created by Golnaz Chehrazi - Zahra Shahin on 2023-05-20.
//

import Foundation

class Item : IsPurchasable{
    var id: Int
    var title: String
    var price: Double
    
    
    var info: String{
        return "\(title), \(price) "
    }
    
    init(id: Int, title: String, price: Double) {
        self.id = id
        self.title = title
        self.price = price
    }
    
    func printReceipt(isRefund: Bool, amount: Double) {
        if(!isRefund){
            print("------------------------")
            print("YOUR RECEIPT")
            print("------------------------")
            print("Thank you for purchasing \(self.title)")
            print("Purchase amount: $\(self.price)")
            print("------------------------")
        }else{
            print("------------------------")
            print("YOUR RECEIPT")
            print("------------------------")
            print("We are refunding the purchase of  \(self.title)")
            print("Refund amount amount: $\(self.price)")
            print("------------------------")
        }
        
    }
}

