//
//  Game.swift
//  G02_Strore
//
//  Created by Golnaz Chehrazi - Zahra Shahin on 2023-05-20.
//

import Foundation

class Game :  Item{
    var publisher : String
    var isMultiPlayer : Bool
    
    override var info:String{
        return """
                \(super.info)
                Publisher: \(self.publisher)
                Multi player: \(self.isMultiPlayer.yes_no)
                """
    }
    
    init(id: Int, title: String, price: Double, publisher: String, isMultiPlayer: Bool) {
        self.isMultiPlayer = isMultiPlayer
        self.publisher = publisher
        super.init(id: id, title: title, price: price)
    }
}

extension Bool{
    var yes_no : String{
        if(self){
            return "Yes"
        }
        else
        {
            return "No"
        }
    }
}
