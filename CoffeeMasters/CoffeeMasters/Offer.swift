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
        ZStack{
            Image("BackgroundPattern")
                .frame(height: 220)
                .frame(maxWidth: .infinity) //this .inifinity for maxWidth says "try to use as much space as possible." for this .frame  the order of constructors is maxWidth and then maxHeight. so if writing them together in the same (), maxWidth has to go first.
                .clipped() // this makes it so elements don't get out of the frame
            
            VStack{
                Text(title)
                    .padding(.top,30)
                    .padding(.bottom, 5)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 20))
                    // ^^ "leading and trailing" are used instead of right and left to help with langugaes that are read right to left
                    //.padding(.horizontal, 50)
                    .font(.title) // we use title because it is used by users in accessibility, they can change the default to work in a way that works best for them. so using fixed numbers isn't the best idea.
                    .background(Color("CardBackground"))
                
                
                Text(description)
                    .padding(.vertical,10)
                    .padding(.horizontal, 30)
                    .font(.body)
                    .background(Color("CardBackground"))
                    
        }
      
        }
    }
}


#Preview {
    // Offer()
    // ^^ this Offer is a structure and it has an initializer. so we can initialize the title and description here.
    
    Offer(title: "Offer: iced coffee", description: "buy one get 2")

}


