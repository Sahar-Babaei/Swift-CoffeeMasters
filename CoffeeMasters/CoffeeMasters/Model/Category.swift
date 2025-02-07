//
//  Category.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-07.
//

import Foundation

struct Category: Decodable  {
    var name: String
    var products: [Product] = []
}
