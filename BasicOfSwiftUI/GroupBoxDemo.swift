//
//  GroupBoxDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 03/02/21.
//

import SwiftUI

struct GroupBoxDemo: View {
    var body: some View {
        Text("GroupBox demo")
            .foregroundColor(.white)

        
        GroupBox(label: Text("Reminder1"), content: {
            Text("your recharge is about to expire make sure you make new recharge before current one expire so you can get continueos service from network Thank you")
                .foregroundColor(.white)
        })
        .groupBoxStyle(customeGroupBoxStyle())
        .padding()
        .foregroundColor(.black)
        
        
        GroupBox(label: Text("Reminder2").foregroundColor(Color.white), content: {
            Text("this one is second reminder to recharge your mobile as its past recharge is not valid after 05_feb_0001 date so kindly take this reminder as seriously otherwise you will not be able to continue use service of our network Thank you 😊 ")
                .foregroundColor(.white)
        })
        .groupBoxStyle(customeGroupBoxStyle())
        .padding()
        .foregroundColor(.black)
    }
}

struct GroupBoxDemo_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxDemo()
    }
}

struct customeGroupBoxStyle : GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
            configuration.content
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
                .overlay(configuration.label.padding(10), alignment: .topLeading)
        }
}
