//
//  AlertDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 02/02/21.
//

import SwiftUI

struct AlertDemo: View {
    @State private var inputText  = ""
    @State private var isAlertPresented = false
    @State private var isActionSheetPresented = false
    var body: some View {
        VStack {
            Label("Learning SwiftUI \n Alert,Action", systemImage: "book.fill")
                .multilineTextAlignment(.center)
                .labelStyle(CustomeLabelStyle())
                .shadow(color: .gray, radius: 1, x: 1.0, y: 5.0)
            Divider()
            
            customeTextField(placeholder: Text("Enter text here").foregroundColor(.blue), text: $inputText,commit: {
                print("commmited")
                
                if inputText == "Alert" {
                    isAlertPresented = true
                    
                } else
                {
                    isActionSheetPresented = true
                }
            })
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(lineWidth: 2.0).foregroundColor(.blue))
                .padding(10)
            
            
            
            Spacer()

        }
        .alert(isPresented: $isAlertPresented, content: {
            Alert(title: Text("you entered"), message: Text("\(inputText)"), primaryButton: .default(Text("Clear Text"), action: {
                clearText()
            }), secondaryButton: .destructive(Text("Print Text"), action: printData))
        })
        .actionSheet(isPresented: $isActionSheetPresented, content: {
            ActionSheet(title: Text("ActionSheet"), message: Text("what is your hobby ?"), buttons: [.cancel(),.destructive(Text("cricket")){
                print("this is indian cricket")
            },.default(Text("football")) {
                print("this game is not populer in india")
            },.destructive(Text("hockey")){
                print("this is our national sport")
            }])
        })
    }
    
    func clearText() {
        inputText.removeAll()
    }
    
    func printData() {
        print("data you entere is :",inputText)
    }
}

struct AlertDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertDemo()
    }
}

/*
 var placeholder: Text
 @Binding var text: String
 var editingChanged: (Bool)->() =  { _ in }
 var commit: ()->() = {}
 
 var body: some View {
     ZStack(alignment: .leading, content: {
         if text.isEmpty {
             placeholder
         }
         TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
     })
 }
 */
