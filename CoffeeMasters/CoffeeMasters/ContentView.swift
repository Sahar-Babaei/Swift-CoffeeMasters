//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-01.
//



import SwiftUI

//i'll comment everything out and we'll start again.

/*
//here we have another structure called "ContentView" that is a "View". "View" is a protocol.
struct ContentView: View {
    // since View is a protocol, it's forcing me to have a body property.
    // the body property will return a specific kind of view (e.g., Text, Image, VStack, etc.)(just one type, choose a type and stick to it). so if i'm choosing to return a text, it should always be text!)
    var body: some View {
        //Vertical Stack or VStack, anything in it will be verically stakced. There is also a HStack
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            //regarding this "Text" it isn't a function because it's not camelCase. it is an initializer for an object or a strucutre!
            //for example here Text is a View and Views are structures.
            // think of it as a "p" in HTML with a string inside.
            Text("hello world")
            HStack{
                Text("Salam, world! :)")
                Text("Hello, donya! :D")
                Button("i'm a button") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            }
            .padding()
        }
        Text("my fourth text")
        // let's say we want this in a different color. we'll use a modifier
        // a modifier in swift recieves a view, and returns another view (a modified view)
        // the idea is:
        // we're not gonna be changing the color, we're gonna be creating another text (another structure). so it's not modifying. it's creating something new.
        // here the foregroundStyle modifier has enums for colors so we use "." and color names
        Text("my fifth text").foregroundStyle(.black).opacity(0.3).padding().background(.yellow).border(Color.blue).opacity(1)
            
        // i addded .padding and other things so now we have a chain of modifiers
        // wanna know all the modifiers there are? go to top right of screen + and see the library,second tab which is modifiers.
        // it all depends on the order. do you add background first and then padding? or do you add padding first and then background? that order determines what it'll look like
        
        
        //now let's try something else. going over anything, do command + click. (in my version it's just right click
        //let's try right click -> repeat:
        // then let's try "show swiftUI inspector" or do cntr+option+click. change font, color, etc and it will add lines of code.
        //scrollview creates a scrollable container and everything in it scrolls
        ScrollView{
            ForEach(0 ..< 7) { item in
                Text("Sixth text baby")
                    .font(.title2)
                    .foregroundColor(Color.orange)
                    .background(.black)
                    .multilineTextAlignment(.leading)
                    .padding(20)
                
                //note: swiftui doesn't have margins, depending on the order you add your modifiers, you can add padding last to create margins.
                
            }
        }
        
        
        
        // a Button structure (which is of type view) has many constructors (many ways you can have a button object.
        Button("hi, click me"){
            print("hey you clicked me")
        }
        .padding()
    }
}




// we can create our own reuable views (ex: components)


#Preview {
    ContentView()
}
*/


// MARK:  --> testing part two:
/*

struct ContentView: View {
    @State var userName = "your name" //this is not a normal variable, it is a state variable that changes state of somehting. We use "@" and "State" right after it
    
    var body: some View {
        
        VStack{
            TextField("Enter your Name:", text: $userName) //to bind our state variable, we put a $ in front of userName
            
            // since we bound the $userName to our state variable who had an initialized value of "n/a" the text field will show "n/a" on default, but if i leave it as "" aka empty, then it will say "enter your name"
            
            Text ("hello \(userName)")
            // why do we put $ above but not here when we type "hello..."?
            // because this Text is using the value to render the value! it will never MODIFY the value.
            // but TextField, is directly modifying the value of the variable.
            
            //now i have instances of greeting structure, each of them work on their own.
            VStack{
                Greeting()
                Greeting()
                Greeting()
            }
        }

    }
}


//now let's make another structure
struct Greeting : View {
    @State var friendName = "friend name"
    var body: some View{
        TextField("Enter your friend's name:", text: $friendName)
        Text ("now, hello \(friendName)")
    }
}

struct ConentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }

}
*/





//--> MARK: starting on the real app:
// to make a new view, on left panel, right click on project folder (not the one with app stor icon) and go "new file" or go "new file from template" and select "new swift ui view"

struct ContentView : View {
    var body : some View{
        EmptyView() // this is like an empty Div in html. put it here because swift needs something in the {}
        Text("hello")
    }
}


struct ConentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}


#Preview {
    ContentView()
    
    
    
    
}
