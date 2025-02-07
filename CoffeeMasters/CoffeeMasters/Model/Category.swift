//
//  Category.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-07.
//

import Foundation

struct Category: Decodable, Identifiable  {
    var name: String
    var products: [Product] = []
    var id : String{
        return self.name
    }
}
