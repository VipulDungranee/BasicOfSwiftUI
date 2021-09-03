//
//  ContextDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 03/02/21.
//

import SwiftUI

struct ContextDemo: View {
    
    @State var favImage : String = "suit.spade"
    @State var cardColor : Color = .yellow
    
    
    var body: some View {
        VStack {
            Image(systemName: "\(favImage)")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
                .foregroundColor(cardColor)
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            
            Text("Favroit Card")
            Divider()
            
            Label("Choose your favroit card type",systemImage: "heart.circle.fill")
                .padding()
                .border(Color.black, width: 1)
                .foregroundColor(cardColor)

                .contextMenu(ContextMenu(menuItems: {
                    Button("♥️ - Hearts", action: selectHeart)
                    Button("♣️ - Clubs", action: selectClubs)
                    Button("♠️ - Spades", action: selectSpades)
                    Button("♦️ - Diamonds", action: selectDimond)

                }))
            
            Divider()
            
            Text("Choose Colour For Color for Card")
                .border(cardColor, width: 1)
                .padding()
                .background(cardColor)
                .contextMenu(ContextMenu(menuItems: {
                    Button("Red", action: {
                        cardColor = .red
                    })
                    Button("Black", action: {
                        cardColor = .black
                    })
                    Button("Green", action: {
                        cardColor = .green
                    })
                    Button("Blue", action: {
                        cardColor = .blue
                    })
                    Button("Orange", action: {
                        cardColor = .orange
                    })
                    Button("yellow", action: {
                        cardColor = .yellow
                    })

                }))
            
            Spacer()
        }
        .animation(.easeInOut)
        .navigationBarTitle(Text("Choose your favroit card"))
    }
    
    func selectHeart() {
        favImage = "suit.heart.fill"
    }
    func selectDimond() {
        favImage = "suit.diamond.fill"

    }
    func selectClubs() {
        favImage = "suit.club.fill"

    }
    func selectSpades() {
        favImage = "suit.spade.fill"

    }
}

struct ContextDemo_Previews: PreviewProvider {
    static var previews: some View {
        ContextDemo()
    }
}
