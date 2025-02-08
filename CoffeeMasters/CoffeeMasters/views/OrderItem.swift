//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-07.
//

import SwiftUI

struct OrderItem: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var item : (Product,Int)
    
    var body: some View {
        HStack{
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer() //an element that pushes elements. it's kinda like auto layout's auto between 2 elements.
            Text("\(Double(item.1)*item.0.price,specifier:"%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundStyle(.ternary)
                .padding()
            //lest add gestures (they're modifiers)
                .onTapGesture {
                    cartManager.remove(product: item.0) //item 0 is the first item in the prodcut (topple)
                }
        }
    }
}

#Preview {
    OrderItem(item:( (Product(id:1 , name:"Dummy", description:"", price:1.25, image:"")),2))
        .padding() //we can add the padding only for the preview but not for the actual element because when the actual element gets put in the list, it has padding.
}
