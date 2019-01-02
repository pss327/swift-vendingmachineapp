//
//  VendingMachine.swift
//  VendingMachine
//
//  Created by 조재흥 on 18. 12. 18..
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct VendingMachine {
    private var balance: Int = 0
    private var products: [Int: [Beverage]] = [:]
    private var historyOfPurchase: [Beverage] = []

    mutating func insert(money: Money) {
        self.balance += money.rawValue
    }

    mutating func add<T>(product: T) where T: Beverage, T: Product {
        if self.products[product.tag] == nil {
            self.products[product.tag] = []
        }
        self.products[product.tag]?.append(product)
    }

    mutating func buy(tag: Int) -> Beverage? {
        let product = self.products[tag]?.popLast()
        if self.products[tag]?.count == 0 {
            self.products[tag] = nil
        }
        if let product = product {
            self.historyOfPurchase.append(product)
            self.balance = pay(product: product)
        }
        return product
    }

    private func pay(product: Beverage) -> Int {
        let pay: (Int) -> Int = { (price: Int) -> Int in
            return self.balance - price
        }
        return product.pay(pay: pay)
    }

    func readBalance() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: self.balance as NSNumber) ?? ""
    }

    func numberOf(tag: Int) -> Int {
        return products[tag]?.count ?? 0
    }

    func expiredProducts() -> [Beverage] {
        var expiredProducts: [Beverage] = []

        for (_, products) in self.products {
            expiredProducts.append(contentsOf: products.filter {$0.isExpiryDateOut()})
        }

        return expiredProducts
    }

    func hotProducts() -> [String] {
        var hotProducts: [String] = []

        for (_, products) in self.products {
            guard !products.isEmpty else {continue}
            guard let variousTemperaturesBeverage = products[0] as? VariousTemperatures else {continue}
            guard variousTemperaturesBeverage.isHot else {continue}
            hotProducts.append(products[0].name { (name: String) -> String in
                return name
            })
        }
        return hotProducts
    }
}
