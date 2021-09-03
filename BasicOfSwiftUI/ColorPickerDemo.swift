//
//  ColorPickerDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 02/02/21.
//

import SwiftUI

struct ColorPickerDemo: View {
    
    @State private var bgColor = Color.white
    
    var body: some View {
        VStack {
            Label("Learning SwiftUI \n ColorPicker", systemImage: "book.fill")
                .multilineTextAlignment(.center)
                .labelStyle(CustomeLabelStyle())
                .shadow(color: .gray, radius: 1, x: 1.0, y: 3.0)
            Divider()
            
            ColorPicker("Choose the background color ", selection: $bgColor,supportsOpacity: false)
            
            
            Spacer()
            
        }
//        .background(bgColor)
    }
}

struct ColorPickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerDemo()
    }
}
