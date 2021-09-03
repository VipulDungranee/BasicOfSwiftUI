//
//  SecureFieldDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 02/02/21.
//

import SwiftUI

struct SecureFieldDemo: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var isSecureText = true
    
    var body: some View {
        VStack {
            Label("Learning SwiftUI - SecureField", systemImage: "book.fill")
                .labelStyle(CustomeLabelStyle())
            TextField("Enter your user name here", text: $userName)
                .padding(10)
                .border(Color.black)
                .padding()
                .disableAutocorrection(true)
            
            if isSecureText {
                SecureField("Enter password here", text: $password)
                    .padding(10)
                    .border(Color.black)
                    .padding()
                    .offset(x: 0, y: -26)
                    .overlay(Button(action: {
                        isSecureText.toggle()
                    }, label: {
                        Image(systemName: isSecureText ? "eye" : "eye.slash")
                        
                    })
                    .offset(x: 130, y: -25)
                    .padding()
                    )
            } else {
                
                TextField("Enter password here", text: $password)
                    .padding(9.5)
                    .border(Color.black)
                    .padding()
                    .offset(x: 0, y: -26)
                    .overlay(Button(action: {
                        isSecureText.toggle()
                    }, label: {
                        Image(systemName: isSecureText ? "eye" : "eye.slash")
                        
                    })
                    .offset(x: 130, y: -25)
                    .padding()
                    )
            }
            
                
                
            
                
            

            
            Divider()
            Button(action: {
                print("userName :",userName)
                print("password :",password)
            }, label: {
                ZStack {
                    Image("india_flag")
                        .resizable()
                        .scaledToFill()
                    Text("Login")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .shadow(color: .gray, radius: 1, x: 1, y: 1)
                }
                .frame(width: 50, height: 50, alignment: .center)
            })
            .padding()
            .border(Color.black)
            
            Spacer()
        }
    }
}

struct SecureFieldDemo_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldDemo()
    }
}
