//
//  ToggleDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 01/02/21.
//

import SwiftUI

struct ToggleDemo: View {
    @State private var toggleValue : Bool = true
    
    var body: some View {
        VStack {
            Label("Toggle Demo", systemImage: "circle.fill")
                .foregroundColor(.green)
                .font(.title2)
            
            Divider()
            Toggle(isOn: $toggleValue, label: {
                Text("do you want printed advice of this ?")
                    .padding(.leading, 32)
                    .frame(width: 190, height: 50, alignment: .center)
                    .foregroundColor(.pink)
            })
            .onChange(of: toggleValue, perform: { value in
                print("Native ? :",value)
            })
            .frame(width: 190, height: 50, alignment: .center)
            .padding()
            
            if toggleValue {
                Text("you will get printed advice")
            }
            
            Spacer()
            
        }
    }
}

struct ToggleDemo_Previews: PreviewProvider {
    static var previews: some View {
        ToggleDemo()
    }
}

