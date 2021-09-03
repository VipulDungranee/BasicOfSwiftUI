//
//  StepperDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 01/02/21.
//

import SwiftUI

struct StepperDemo: View {
    @State private var value = 0
    let colors : [Color] = [.orange,.gray,.red,.green,.purple,.pink,.yellow,.black,.white,.secondary,.white,.green]
        
    var body: some View {
        VStack {
            Text("Stepper Control")
                .font(.title)
                .fontWeight(.bold)
            Divider()
            
            Stepper(value: $value, in: 0...colors.count - 1,step: 1) {
                Text("Value : \(value) ")
            }
        
            .padding()
            .background(colors[value])
            Spacer()
        }
    }
}

struct StepperDemo_Previews: PreviewProvider {
    static var previews: some View {
        StepperDemo()
    }
}
