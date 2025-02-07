//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-07.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject{
    @Published var menu : [Category] = []
    
    init() {
        refreshItemsFromNetwork() //when app starts, refresh and get data from network
    }
    
    //a function that calls Alamofire (AF)
    func refreshItemsFromNetwork()  {
            AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
                .responseDecodable(of: [Category].self) { response in
                    if let menuFromNetwork = response.value {
                      //  print(response.value)
                        self.menu = menuFromNetwork
                    }
                }
        }
    
    
    
}
