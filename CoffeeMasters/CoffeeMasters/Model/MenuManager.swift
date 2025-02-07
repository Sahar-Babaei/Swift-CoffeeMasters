//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-07.
//

import Foundation

class MenuManager: ObservableObject{
    @Published var menu : [Category] = [
        Category (name: "Hot coffee", products:[
            //we don't want this type of hard coded stuff.
            // we wanna go to the network and get our data from there
            // for that, there is an API

            Product(id:0, name:"", description:"", price:1.24, image: ""),
            Product(id:0, name:"", description:"", price:1.24, image: ""),
            Product(id:0, name:"", description:"", price:1.24, image: ""),
            Product(id:0, name:"", description:"", price:1.24, image: ""),
            Product(id:0, name:"", description:"", price:1.24, image: "")
        ])
    ]
    
}
