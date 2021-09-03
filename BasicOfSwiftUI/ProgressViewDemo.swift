//
//  ProgressViewDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 01/02/21.
//

import SwiftUI

struct ProgressViewDemo: View {
    let steps = 10
    let range = 1...100
    
    @State var value = 1
    @State var progress = 0.1
    @State var sliderValue = 1.0
    
    var body: some View {
        VStack {
            
            ZStack {
                Image(systemName: "book.fill")
                    .padding(.top,-30)
                    .foregroundColor(.blue)
                Text("SwiftUI")
                    .font(.title)
                    .foregroundColor(.blue)
                    
            }
            .shadow(color: .black, radius: 5, x: 0.0, y: 0)
            .rotation3DEffect(
                .degrees(30),
                axis: (x: 1.0, y: 0.0, z: 0.0))
            
            Divider()
            
            
            Label("Stepper", systemImage: "star.fill")
            Stepper(value: $value, in: range, step: 1) {
                Text("\t\(value)")
                    .font(.title)
                    .fontWeight(.semibold)
            }
                .onChange(of: value, perform: { value in
                    sliderValue = Double(value)
                })
                .padding()
                .background(Color.blue)
                .padding()
            
            Divider()
            
            Label("ProgressView", systemImage: "star.fill")

            ProgressView(value: Double((CGFloat(value) / 100)))
                .progressViewStyle(CustomePRogressViewStyle())
                .animation(.linear)
                
                .scaleEffect(x: 1.0, y: 10.0, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
                .foregroundColor(.green)
                .accentColor(.green)
                .padding()
                .background(Color.yellow)
                .padding()
            
            Label("Slidder", systemImage: "star.fill")

            Slider(value: $sliderValue, in: 1.0...100.0, step: 1.0 , onEditingChanged: { (editing) in
                value = Int(sliderValue)
               }, label: {
                Text("slider")
            })
            .animation(.linear)
            .padding()
            .accentColor(.green)
            .background(Color.black)
            .padding()

            Spacer()
        }
    }
}

struct ProgressViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewDemo()
    }
}


struct CustomePRogressViewStyle : ProgressViewStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .border(Color.white, width: 0.3)
            .background(Color.pink)
    }
    
    
}
