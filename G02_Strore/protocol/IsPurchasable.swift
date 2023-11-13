//
//  IsPurchasable.swift
//  G02_Strore
//
//  Created by Golnaz Chehrazi - Zahara Shahin on 2023-05-22.
//

import Foundation

protocol IsPurchasable{
    var info: String {get}
    func printReceipt(isRefund: Bool, amount:Double)
}
