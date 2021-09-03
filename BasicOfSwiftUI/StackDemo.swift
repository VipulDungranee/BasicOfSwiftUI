//
//  StackDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 01/02/21.
//

import SwiftUI

struct StackDemo: View {
    
    var body: some View {
        ScrollView {
            
            
            ZStack {
                Image("india_flag")
                    .opacity(1.0)
                    .scaleEffect(0.25)
                HStack {
                    Text("I")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.orange)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                    Text("N")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.purple)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                    Text("D")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.blue)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                    Text("I")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.red)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                    Text("A")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.green)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                    

                }
                .padding(.leading,20)
                VStack {
                    Text("N")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.purple)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                    Text("D")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.blue)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                    Text("I")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.red)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                    Text("A")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.green)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 10.0)
                }
                .padding(.leading , -50)
                .padding(.top , 175)
                
                Image("step8")
                    .opacity(1.0)
                    .scaleEffect(1.0)
                
            }
            
        }
        
    }
}

struct StackDemo_Previews: PreviewProvider {
    static var previews: some View {
        StackDemo()
    }
}
