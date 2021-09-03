//
//  LinkDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 03/02/21.
//

import SwiftUI

struct LinkDemo: View {
    @SceneStorage("name") var name = ""

    var body: some View {
        VStack {
            Label("Learning SwiftUI \n Link", systemImage: "book.fill")
                .labelStyle(CustomeLabelStyle())
            Divider()
                        
            Link("click here to navigate to the page to learn swiftui link", destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-open-web-links-in-safari")!)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
    }
}

struct LinkDemo_Previews: PreviewProvider {
    static var previews: some View {
        LinkDemo()
    }
}
