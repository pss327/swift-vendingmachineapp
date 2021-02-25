//
//  Coffee.swift
//  VendingMachineApp
//
//  Created by kiyoungj on 2021/02/22.
//

import Foundation

enum CoffeeType : String {
    case Top = "Top"
    case Cantata = "칸타타"
    case Georgia = "조지아"
}

class Coffee : Drink {
    
    override init(brand: String, capacity: Int, price: Int, name: String, madeDate: Date) {
        super.init(brand: brand, capacity: capacity, price: price, name: name, madeDate: madeDate)
    }
}
