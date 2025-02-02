//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-02.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        VStack{
            Text(title)
            Text(description)
        }
    }
}


#Preview {
    // Offer()
    // ^^ this Offer is a structure and it has an initializer. so we can initialize the title and description here.

    
    Offer(title: "Offer: iced coffee", description: "buy one get 2")
    
    Offer(title:"i cry", description: "buyyyy")
}


