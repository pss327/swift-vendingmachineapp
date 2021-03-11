//
//  Sprite.swift
//  VendingMachineApp
//
//  Created by kiyoungj on 2021/02/24.
//

import Foundation


class Sprite: Soda {
    
    private let inPlastic: Bool
    
    init(inPlastic: Bool, isSodaType: SodaType, factoryCode: String, brand: String, capacity: Int, price: Int, name: String, manufacturedAt: Date,isHot:Bool) {
        self.inPlastic = inPlastic
        super.init(isSodaType: isSodaType, factoryCode: factoryCode, brand: brand, capacity: capacity, price: price, name: name, manufacturedAt: manufacturedAt,isHot: isHot)
    }
    
}