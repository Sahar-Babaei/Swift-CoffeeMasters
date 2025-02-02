//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-02.
//

import SwiftUI

struct OffersPage: View {
    
    var body: some View {
        
        NavigationView{ //this contains everything inside of it in a navigation stack.
            List{ //instead of VStack we use List
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")

            }
            .navigationTitle("Offers") //we are adding a modifier to the child of NavigationView which is List.
        }
    }
    
    /*
     NavigationView {
     VStack {
     List {
     Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
     Offer(title: "Welcome Gift", description: "25% off on your first order.")
     }.listStyle(.plain)
     .listRowSeparator(.hidden)
     }.navigationTitle("Offers")
     }
     */
    
}


#Preview {
    OffersPage()
}
