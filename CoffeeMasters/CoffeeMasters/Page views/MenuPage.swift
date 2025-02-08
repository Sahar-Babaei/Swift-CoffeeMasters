//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-06.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager : MenuManager //no need to make an instance of it, it is automatically injected
    
    var body: some View {
        NavigationView{
            List{
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products){ product in NavigationLink {
                        DetailsPage(product: product) //goes to detail page
                    } label : {
                        ProductItem(product: product )
                    }
                        
                    }
                }
            }.navigationTitle("products") //The navigation view needs a navigation Title modifier
            //TODO: Mentor? why isn't there a title for mine?
            
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}
