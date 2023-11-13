//
//  Movie.swift
//  G02_Strore
//
//  Created by Golnaz Chehrazi - Zahra Shahin on 2023-05-21.
//

import Foundation

class Movie : Item {
    var runningTime: Int
    override var info:String{
        return """
                \(super.info)
                Running Time : \(runningTime)
                """
    }
    
    init(id: Int, title: String, price: Double, runningTime:Int) {
        self.runningTime = runningTime
        super.init(id: id, title: title, price: price)
    }
    
    
    
    
}
