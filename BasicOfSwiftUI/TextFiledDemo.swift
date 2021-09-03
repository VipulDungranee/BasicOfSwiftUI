//
//  TextFiledDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 30/01/21.
//

import SwiftUI

struct TextFiledDemo: View {
    @State private var inputText = ""
    @State private var wordsCount = 0
    @State var text = ""
    
    var body: some View {
        VStack {
            Label(LocalizedStringKey("SwiftUI"), systemImage: "book.fill")
                .labelStyle(CustomeLabelStyle())
            
            Divider()
            
            Text("Label,TextFiled & TextEditor")
                .font(.title)
                .rotation3DEffect(
                    .degrees(45),
                    axis: (x: 1.0, y: 0.0, z: 0.0))
            
            customeTextField(placeholder: Text("Place Holder Text").foregroundColor(.red), text: $text)
            
            Divider()
            TextField("this is textField", text: $inputText)
                .font(.largeTitle)
                .lineLimit(10)
                .foregroundColor(.blue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue,lineWidth: 2))
            
            Divider()

            HStack {
                
                Image(systemName: "person").foregroundColor(.blue)
                TextField("Second Text Filed",text: $inputText)
                Image(systemName: "star.fill").foregroundColor(.blue)
            }
            
            TextEditor(text: $inputText)
                .lineLimit(10)
            
            
            Button(action: {
                if inputText.isEmpty {
                    print("No text Found")
                } else {
                    wordsCount = countCharacter(string: inputText)
                    print("no.of words you have entered are ...",wordsCount)
                }
            }, label: {
                Text("Count")
            })
            

            
            
            
        }
        .padding()
            Spacer()
        }
    
    
    func countCharacter(string : String) -> Int {
        
        print("Text in custome text filed are :",text)
        let words = string.split(separator: " ")
        
        print(words)
        
        return words.count
    }
}

struct TextFiledDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextFiledDemo()
    }
}

//MARK:- LabelStyle
struct CustomeLabelStyle : LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
//        Label(configuration)
//            .padding()
//            .font(.title)
//            .foregroundColor(.blue)
//            .shadow(color: .red, radius: 1, x: 3, y: 3)
//            .background(Color.yellow)
        
        VStack {
            configuration.icon
            configuration.title
                .multilineTextAlignment(.center)
        }
            
    }
}

//MARK:- CustomeTextField 

struct customeTextField : View {
    
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
    
}
