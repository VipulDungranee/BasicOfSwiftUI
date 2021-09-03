//
//  GroupDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 03/02/21.
//
/*
 If you need several views to act as one – for example, to transition together – then you should use SwiftUI’s Group view. This is particularly important because, for underlying technical reasons, you can only add up to 10 views to a parent view at a time.
*/

import SwiftUI

struct GroupDemo: View {
    @State var inputText : String = "hello"
    var body: some View {
        
        ScrollView{
            
            Group {
                
                CustomeText(textString: inputText)
                Text("Text 2")
                Text("Text 3")
                Text("Text 4")
                Text("Text 5")
                Text("Text 6")
                Text("Text 7")
                Text("Text 8")
                Text("Text 9")
            }
            .padding()
            Group {
                Text("Text 11")
                Text("Text 12")
                Text("Text 13")
                Text("Text 14")
                Text("Text 15")
                Text("Text 16")
                Text("Text 17")
                Text("Text 18")
                Text("Text 19")
                Text("Text 20")
            }
            .padding()
            
            Button("tap here to change text 1") {
                inputText = "3:04"
            }
        }
    }
}

struct GroupDemo_Previews: PreviewProvider {
    static var previews: some View {
        GroupDemo()
    }
}


struct CustomeText : View {
    var textString : String
    var body: some View {
        Text("\(textString)")
            .font(.title)
            .fontWeight(.bold)
            .shadow(color: .orange, radius: 1, x: 1.0, y: 1.0)
    }
}
