//
//  Soda.swift
//  VendingMachineApp
//
//  Created by 신한섭 on 2020/02/25.
//  Copyright © 2020 신한섭. All rights reserved.
//

import Foundation

class Soda: Beverage {
    private let zeroStandard = 10.0
    private var zeroCalorie: Bool
    
    override init(brand: String, capacity: Double, price: Price, name: String, manufacturingDate: Date, calorie: Double, temperature: Double) {
        self.zeroCalorie = zeroStandard >= calorie ? true : false
        super.init(brand: brand, capacity: capacity, price: price, name: name, manufacturingDate: manufacturingDate, calorie: calorie, temperature: temperature)
    }
    
    func isZeroCalorie() -> Bool {
        return zeroCalorie
    }
}