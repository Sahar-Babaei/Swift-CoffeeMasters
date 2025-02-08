//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-06.
//

import SwiftUI

struct ProductItem: View {
    
    var product : Product
    
    
    
    var body: some View {
            VStack{
                AsyncImage(url: product.imageURL) // added the image into the "preview assets" file.
                    .frame(width: 300, height: 150)
                    .background(Color("AccentColor"))
                HStack {
                    VStack(alignment: .leading) {
                        Text(product.name) //we made a product Instance in the vars above
                            .font(.title3)
                            .bold()
                        Text("$ \(product.price,specifier: "%.2f")") //this specifier is taking the value and only allowing 2 decimals so our price won't look like $1.2500000
                            .font(.caption)

                    }.padding(8)
                    Spacer()
                }
            }
            .background(Color("SurfaceBackground"))
            .cornerRadius(15)
            .padding(.trailing)
        }
}

#Preview {
    ProductItem(product: Product(id: 1, name:"dummy product", description:"dummy description", price: 1.25, image:""))
}
