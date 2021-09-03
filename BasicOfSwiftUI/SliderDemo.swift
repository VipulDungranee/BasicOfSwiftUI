//
//  SliderDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 01/02/21.
//

import SwiftUI

struct SliderDemo: View {
    @State private var speed = 50.0
    @State private var isEditing = false
    
    
    var body: some View {
        
        VStack {
            
            
            Text("SliderDemo")
            .font(.title)
            .shadow(color: .green, radius: 0, x: 1, y: 10)
            .rotation3DEffect(
                .degrees(30),
                axis: (x: 1.0, y: 0.0, z: 0.0))
            
            
            
            Divider()
            
            Slider(value: $speed,
                   in: 0...100,
                   step: 1.0,
                   onEditingChanged: { (editing) in
                    isEditing = editing
                   },minimumValueLabel: Text("0"),
                   maximumValueLabel: Text("100"), label: ({
                            Text("speed")
                   }))
                .padding()
                .accentColor(.green)
                .overlay(RoundedRectangle(cornerRadius: 15.0).stroke(lineWidth: 2.0).foregroundColor(.green))
                .padding()
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
                .padding(.bottom , 100)
            
            ZStack {
            Image("ic_food")
                .animation(.easeInOut)
//                .scaleEffect(CGFloat(speed / 50))
                .rotation3DEffect(
                    .degrees(speed * 3.6),
                    axis: (x: 0.0, y: 1.0, z: 0.0))
                
            }
            Spacer()
            
        }
    }
}

struct SliderDemo_Previews: PreviewProvider {
    static var previews: some View {
        SliderDemo()
    }
}
