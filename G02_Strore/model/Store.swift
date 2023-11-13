//
//  Inventory.swift
//  G02_Strore
//
//  Created by Golnaz Chehrazi - Zahra Shahin on 2023-05-20.
//

import Foundation

class Store{
    var items : [Item] = [Item]()
    init(items:[Item]){
        self.items = items
    }
    
    func findByTitle(keyword: String) {
        var foundItems = false
        for item in self.items {
            if item.title.lowercased().contains(keyword.lowercased()) {
                foundItems = true
                if let movie = item as? Movie {
                    print("[movie] \(movie.info)")
                    print("*********************************************************")
                } else if let game = item as? Game {
                    print("[GAME] \(game.info)")
                    print("*********************************************************")
                }
            }
        }

        if !foundItems {
            print("Sorry, no matching items found")
            print("******************************")
        }
    }
    
    func buyItem(c: Customer, itemId: Int){
        for item in self.items{
            if(item.id == itemId){
                if(c.itemsList.contains(where: {$0.id == itemId})){
                    print("The customer ALREADY owns a copy of the item")
                    print("*******************************************************")
                    return
                }
                if(item.price > c.balance){
                    print("The customer does NOT have enough money to buy the item")
                    print("*******************************************************")
                    return
                }
                c.reloadAmount(amount: -item.price)
                let ownedItem = OwnedItem(id: item.id, title: item.title, price: item.price, minutesUsed: 0)
                c.itemsList.append(ownedItem)
                print("Purchase Success!")
                item.printReceipt(isRefund: false, amount: ownedItem.price)
                return
            }
        }
        
        print("Item with this id: \(itemId) does not exist in the store.")
        print("*********************************************************")
    }
    
    func issueRefund(c: Customer, itemId: Int){
        for item in c.itemsList{
            if(item.id == itemId){
                if(item.minutesUsed >= 30){
                    print("Impossible to refund. the customer has used more than 30 minutes.")
                    print("*****************************************************************")
                    return
                }
                c.reloadAmount(amount: item.price)
                
                c.itemsList.removeAll(where: {$0.id == itemId})
                item.printReceipt(isRefund: true, amount: item.price)
                return
            }
        }
        print("This customer has not this item in their items list")
        print("****************************************************")
    }
}
