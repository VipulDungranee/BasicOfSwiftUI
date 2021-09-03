//
//  PropertyWrappersDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 03/02/21.
//

import SwiftUI

struct PropertyWrappersDemo: View {
    
    @AppStorage("username") var username : String = "VD"
    @State private var counter : Int = 0
        
    private var names = ["abhinav","suresh","jd","anukul","saurav","hemaang"]
    

    @SceneStorage("name") var name = ""
    
    var body: some View {
        VStack {
            Text("username : \(username)")
            
            Button(action: {
                self.counter += 1
                
                self.username = self.counter < names.count ? names[counter] : "vipul"

            }, label: {
                Text("Click")
            })
            
          
            TextField("this data is stored in sceneStorage", text: $name)
            
        }
    }
}

struct PropertyWrappersDemo_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrappersDemo()
    }
}
