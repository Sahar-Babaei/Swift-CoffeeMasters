//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-07.
//

import Foundation


//what is a cart? basically an array of products, with their numbers (2 cappuchino, 1 muffin)
// so we would add tupples

class CartManager : ObservableObject{
    @Published var cart: [(Product, Int)] = [] //we're making an array of tupples
}
