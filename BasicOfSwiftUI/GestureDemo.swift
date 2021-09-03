//
//  GestureDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 30/01/21.
//

import SwiftUI

struct GestureDemo: View {
    
   
    @GestureState var dragOffSet = CGSize.zero
    @State var finalOffSet = CGSize.zero
    @State var scaleOffSet = CGSize(width: 1.0, height: 1.0)

    var body: some View {
        Image("step8")
            .font(.system(size: 200))
//            .offset(x: dragOffSet.width + finalOffSet.width, y: dragOffSet.height + finalOffSet.height)
            .scaleEffect(scaleOffSet)
            .animation(.easeInOut)
            .gesture(
                
                /*
                DragGesture()
                    .updating($dragOffSet, body: { (value, state,Transaction) in
                        state = value.translation
                    })
                
                    .onEnded({ (value) in
                        finalOffSet.height += value.translation.height
                        finalOffSet.width += value.translation.width

                        
                    })
*/
                
                MagnificationGesture()
                    
                
                    .onChanged({ (value) in
                        print("value.value =",value)
                        scaleOffSet = CGSize(width: value, height: value)
                    })
                
                )
    }
}

struct GestureDemo_Previews: PreviewProvider {
    static var previews: some View {
        GestureDemo()
    }
}
