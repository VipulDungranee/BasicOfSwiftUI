//
//  FormDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 03/02/21.
// this demo include form & section

import SwiftUI

struct FormDemo: View {
    @State private var username : String = ""
    @State private var isPrivate : Bool = true

    @State var notificationEnabled : Bool = false
    @State private var previewIndex = 0
    var previewOption = ["Always","When unlocked","Never"]
    
    @State private var buildNumber = 1
    
    var body: some View {
        
            Form {
                Section(header: Text("PROFILE"), content: {
                    
                    TextField("Enter user name", text: $username)
                    Toggle(isOn: $isPrivate, label: {
                        Text("Private Account")
                    })
                })
                Section(header: Text("NOTIFICATIONS"), content: {
                    Toggle(isOn: $notificationEnabled, label: {
                        Text("Enabled")
                    })
                    Picker(selection: $previewIndex, label: Text("Show Previews"), content: {
                        ForEach(0 ..< previewOption.count) {
                            Text(self.previewOption[$0])
                        }
                    })
                })
                Section(header: Text("ABOUT"), content: {
                    HStack {
                        Text("version")
                        Spacer()
                        Text("\(buildNumber).2.1")
                    }
                })
                
                Section(header: Text("Build NUMBER"), content: {
                    Stepper(value: $buildNumber, in: 0...20){
                        Text("\(buildNumber)")
                            .foregroundColor(.blue)
                    }
                })
                
                Section(content: {
                    Button("Reset All the Settings", action: {
                        print("Perform an action here")
                        resetAll()
                    })
                })
                
                
            }
            .animation(.linear)
            
            .navigationBarTitle("Settings")
        }
    
    func resetAll() {
        username = ""
        isPrivate = true
        notificationEnabled = false
        previewIndex = 0
        buildNumber = 2
        
    }
}

struct FormDemo_Previews: PreviewProvider {
    static var previews: some View {
        FormDemo()
    }
}
