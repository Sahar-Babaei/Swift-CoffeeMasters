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
    
    var body: some View {
        ScrollView {
            Image("DummyImage")
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text("Product")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("$ 4.25 ea")
                Stepper(value: $quantity, in: 1...10) { } //stepped for adding more than 1 coffee
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $4.25")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                //TODO
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
    DetailsPage()
}
