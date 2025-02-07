//
//  Product.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-07.
//

import Foundation


struct Product{
    var id: Int
        var name: String
        var description: String?
        var price: Double
        var image: String = ""
        
    
    //this is coming from the "server"
    // a compute property, wwhere we set the getter.
    // in swift there is a class called the URL and it can be made from a string. so here we can construct our url using the URL class to put in the real image
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
