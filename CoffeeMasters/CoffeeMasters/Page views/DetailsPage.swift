//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-06.
//

import SwiftUI

struct DetailsPage: View {
    
    //let's make a state variable for quantity, we will bind things to this with $
    @State var quantity = 1
    
    //we need a dependency so the details page can get real data
    var product: Product
    
    @EnvironmentObject var cartManager : CartManager
    
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            
            //MARK: if code crashed, might be because i put a "!" down here
            Text(product.description!)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
                .foregroundStyle(.primary)
            
            HStack {
                Text("$ \(product.price,specifier: "%.2f") ea")
                Stepper(value: $quantity, in: 1...10) { } //stepped for adding more than 1 coffee
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $\(Double(quantity)*product.price, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                //TODO
                cartManager.add(product: product, quantity:quantity)
                
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
          
    }
}

#Preview {
    DetailsPage(product: Product(id: 1, name:"Dummy", description:"", price: 1.25, image :""))
        .environmentObject(CartManager())
}
