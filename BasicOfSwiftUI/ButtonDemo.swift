//
//  Button.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 30/01/21.
//

import SwiftUI

struct ButtonDemo: View {
    var body: some View {
        VStack {
            
            //Label with 3D effect
            Text("Hello, World! button ")
                .font(.title)
                .shadow(color: .green, radius: 0, x: 0, y: 20)
                
                .rotation3DEffect(
                    .degrees(50),
                    axis: (x: 1.0, y: 0.0, z: 0.0))
            
            //Button
            Button(action: {
                //what you perfrom
                print("Hi...")
            }) {
                //how the button look like
                    
                    Text("Hello World")
                        .fontWeight(.bold)          // change font weight
                        
                        .padding(10)                //add pading with default white colour
                        .background(Color.purple)   //change the background color to yellow
                        .cornerRadius(40)
                        .foregroundColor(.white)   //change font color
                        .font(.title)               //change font style
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.purple,lineWidth: 5.0))

                        
            }
            
                
            
            }
    
    }
    
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDemo()
    }
}
