//
//  ContentView.swift
//  Animations
//
//  Created by Nestor Trillo on 3/21/21.
//

import SwiftUI

struct ContentView: View {
// VARS
    @State private var animationAmount = 0.0
    
    var body: some View {
       
        
         VStack{
           
            Button(action: {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)){
                    self.animationAmount += 360
                }
            }, label: {
                Text("Click me!")
            })
            .padding(50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(
                .degrees(animationAmount),
                axis: (x: 1.0, y: 1.0, z: 1.0)
                )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
