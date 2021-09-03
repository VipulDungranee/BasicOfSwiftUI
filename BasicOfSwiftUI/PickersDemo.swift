//
//  PickersDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 02/02/21.
//

import SwiftUI

struct PickersDemo: View {
    var colors : [Color] = [.red,.blue,.green,.pink,.yellow,.black,.gray]
    @State private var selectedColor = 0
    
    var body: some View {
        VStack {
            Label("Learning SwiftUI \n Picker", systemImage: "book.fill")
                .multilineTextAlignment(.center)
                .labelStyle(CustomeLabelStyle())
                .shadow(color: .gray, radius: 1, x: 1.0, y: 3.0)
            Divider()
           
            Picker("Choose your favroite color", selection: $selectedColor) {
                ForEach(0..<colors.count) {
                    Text(self.colors[$0].description)
                        .fontWeight(.bold)
                        .shadow(color: .blue, radius: 1, x: 1, y: 1)
                }
            }
            .pickerStyle(InlinePickerStyle())
            .background(Color.yellow)
            .border(Color.black, width: 5)
            .padding()
            
            Text("My favroite color is : \(colors[selectedColor].description)")
                .foregroundColor(selectedColor == 1 ? .white : selectedColor == 5 ? .green : .black)
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(colors[selectedColor])
                .shadow(color: selectedColor > 0 ? colors[selectedColor - 1] : .orange, radius: 25, x: 0, y: 0)
                .rotation3DEffect(
                    .degrees(30),
                    axis: (x: 1.0, y: 1.0, z: 0.0))
                .offset(x: 30, y: 30)
                
            Spacer()
        }
        
    }
}

struct PickersDemo_Previews: PreviewProvider {
    static var previews: some View {
        PickersDemo()
    }
}
