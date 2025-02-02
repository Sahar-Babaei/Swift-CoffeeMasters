//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-02.
//

import SwiftUI

struct Offer: View {
    //our variables
    var title = ""
    var description = ""
    
    //things in the body
    var body: some View {
        VStack{
            Text(title)
                .padding(.top,30)
                .padding(.bottom, 5)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 50))
                // ^^ "leading and trailing" are used instead of right and left to help with langugaes that are read right to left
                //.padding(.horizontal, 50)
                .font(.title) // we use title because it is used by users in accessibility, they can change the default to work in a way that works best for them. so using fixed numbers isn't the best idea.
            
                
            
            
            
            Text(description)
                .padding(.vertical,10)
                .padding(.horizontal, 50)
                .font(.body)
        }
    }
}


#Preview {
    // Offer()
    // ^^ this Offer is a structure and it has an initializer. so we can initialize the title and description here.
    
    Offer(title: "Offer: iced coffee", description: "buy one get 2")

}


