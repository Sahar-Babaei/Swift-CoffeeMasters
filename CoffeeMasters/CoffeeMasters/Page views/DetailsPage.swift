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
    
    //this one isn't a "EnvironmentObject" , it's just "Environemnt"
    //allows you to bring in (as dependencies) parts from the OS itself like screensize, time zone, the current language, the current orientation, etc.
    @Environment(\.dismiss) var dismiss
    
    
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
                dismiss() //we add this so when user adds items, the page will be dismissed and go back to menu so they won't stay on their current drink of choice's page
                
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
