//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-01.
//

// this code is a structure, not a class!
// option+click on the word "App" you see it is a protocol.
// so we're implementing a protocol.


import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    
    //an app needs a body, therefore this body variable :
    // on ipad you can run more than 1 app on the screen at the same time, not on iphone
    var body: some Scene { //a scene is mostly used in ipads, as an app window
        WindowGroup {
            ContentView() //content view is the other file we have on the left.
            
            //these global objects need to implement the protocol.
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}



//---> Regarding classes, structures and "some"
/*
// --> super class
class Base{

}

// --> class A extends Base
class A:Base{
    
}

// --> class B extends Base
class B:Base{
    
}

// --> when we want a function to return an object of the subclass A
func test()-> A{
    return A()
}

// --> when we want a function to return an object of either subclass A or B
func test(something: Int)-> Base{
    if something == 0{
        return A()
    }
    else{
        return B()
    }
}


// --> but what is "some"?
// this some says that you can return A or B, but it either has to be always A or always B, or always Base
func test(something: Int)-> some Base{
    if something == 0{
        return A()
    }
    else{
        //return B()
        return A()
    }
}
*/

