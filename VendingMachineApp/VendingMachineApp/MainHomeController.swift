//
//  ViewController.swift
//  VendingMachineApp
//
//  Created by kiyoungj on 2021/02/22.
//

import UIKit

class MainHomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
        let drinks: [Drink] = [ Milk.init(isMilkFlavor: .Strawberry, farmCode: "001", brand: "서울우유",
                                          capacity: 200,
                                          price: 1000,
                                          name: "날마다딸기우유",
                                          madeDate: Date(), isHot: false, beverageType: BeverageType.Milk),
                                
                                Milk.init(isMilkFlavor: .Strawberry, farmCode: "002", brand: "서울우유",
                                          capacity: 200,
                                          price: 1000,
                                          name: "날마다딸기우유",
                                          madeDate: Date(), isHot: false, beverageType: BeverageType.Milk),
                                Soda.init(isSodaType: .Cola,
                                          factoryCode:"01",
                                          brand: "팹시",
                                          capacity: 350,
                                          price: 2000,
                                          name: "다이어트콜라",
                                          madeDate: Date(), isHot: false, beverageType: BeverageType.Soda),
                                Coffee.init(isDecaffeinated: true, isHot: true, isCoffeeBrandName: .Cantata, brand: "맥심", capacity: 4000, price: 3000, name: "TOP아메리카노", madeDate: Date(), beverageType: BeverageType.Soda)]
=======
        let drinks: [Drink] = [ Milk.init(brand: "서울우유",
                                          weight: 200,
                                          price: 1000,
                                          name: "날마다딸기우유",
                                          madeDate: Date()),
                                
                                Milk.init(brand: "서울우유",
                                          weight: 200,
                                          price: 1000,
                                          name: "날마다딸기우유",
                                          madeDate: Date()),
                                Soda.init(brand: "팹시",
                                          weight: 350,
                                          price: 2000,
                                          name: "다이어트콜라",
                                          madeDate: Date()),
                                Coffee.init(brand: "맥심",
                                            weight: 4000,
                                            price: 3000,
                                            name: "TOP아메리카노",
                                            madeDate: Date())]
>>>>>>> b528f772da80ea2bcbf1b4f1e3af963c7b0c09e8
        
        let vendingMachine = VendingMachine(drinks: drinks)
        vendingMachine.showVendingMachine(handler: { drink in
            print(drink.description)
        })
<<<<<<< HEAD
        
        let tmpMilk = Milk.init(isMilkFlavor: .Strawberry, farmCode: "001", brand: "서울우유",
                                capacity: 200,
                                price: 1000,
                                name: "날마다딸기우유",
                                madeDate: Date(), isHot: false, beverageType: BeverageType.Milk)
        
        let tmpString = tmpMilk.isBeverageType()
        let tmpString2 = Coffee.init(isDecaffeinated: true, isHot: true, isCoffeeBrandName: .Cantata, brand: "맥심", capacity: 4000, price: 3000, name: "TOP아메리카노", madeDate: Date(), beverageType: BeverageType.Soda)
        print("=========")
        print(tmpString)
        print(tmpString2.isBeverageType())
=======
>>>>>>> b528f772da80ea2bcbf1b4f1e3af963c7b0c09e8
    }
}

