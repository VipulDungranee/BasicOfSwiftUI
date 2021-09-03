//
//  ContentView.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 29/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("SwiftUI")
            .font(.title)
            .fontWeight(.thin)
            .rotationEffect(.degrees(45))
            .padding(.leading , -100)
            .foregroundColor(.green)
            
        Text("Storyboard")
            .font(.title)
            .rotationEffect(.degrees(-45))
            .padding(.top , -60)
            .padding(.leading, 75)
            .foregroundColor(.blue)
        
        Text("Storyboard and SwiftUI this are two way to the design userInterface in ios application ,\n Note:- swiftUI support iOS13 and later only so its important to taking care while choosing  any form this two and if you app will support device which run on lower than iOS 13 than you should use UIKit for your project otherwise your app will not run on device with lowervesion of os they are running")
            .font(.title3)
            .foregroundColor(.blue)
            .frame(width: 300 , height: 100)
            .multilineTextAlignment(.center)
            .truncationMode(.head)
            .lineLimit(2)
            .lineSpacing(20)
            .padding(10)
        
        Text("Storyboard")
            .font(.title)
            .fontWeight(.bold)
            .rotation3DEffect(
                .degrees(50),
                axis: (x: 1.0, y: 0.0, z: 1.0))
            .shadow(color: .green, radius: 2, x: 0.0, y: 20)
        Image("ic_food")
            .clipShape(Circle())
            
            .overlay(Circle().stroke(Color.black , lineWidth: 4))
            .shadow(color: .blue, radius: 20, x: 0, y: 0)
            .scaleEffect(2.0)
            .padding(.top , 115.0)
        
        Text("Vegetables")

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
