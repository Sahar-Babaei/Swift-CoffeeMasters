//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-06.
//

import SwiftUI

struct MenuPage: View {
    
    //if the data inside this object changes, refresh everything that depends on it.
    @EnvironmentObject var menuManager : MenuManager //no need to make an instance of it, it is automatically injected
    
    var body: some View {
        NavigationView{
            List{
                //use foreach items when u dont care about index or number.
                ForEach(menuManager.menu) { category in //category is "i"
                    Text(category.name)
                    
                    ForEach(category.products){ product in NavigationLink {
                        DetailsPage(product: product) //goes to detail page
                    } label : {
                        ProductItem(product: product )
                    }
                        
                    }
                }
            }.navigationTitle("products") //The navigation view needs a navigation Title modifier
            
            
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}
