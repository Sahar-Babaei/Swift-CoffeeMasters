//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-06.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    NavigationLink {
                        DetailsPage() //goes to detail page
                    } label : {
                        ProductItem(product: Product(id: 1, name: "Products", description: "some description", price: 1.25, image: "")) //what you are clicking on
                    }
                    
                }
            }
        }.navigationTitle("products") //The navigation view needs a navigation Title modifier
        //TODO: Mentor? why isn't there a title for mine?
        
    }
}

#Preview {
    MenuPage()
}
