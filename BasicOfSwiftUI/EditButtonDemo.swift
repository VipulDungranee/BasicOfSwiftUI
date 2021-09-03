//
//  EditBoxDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 01/02/21.
//

import SwiftUI

struct EditButtonDemo: View {
    @State private var animals = ["Lion","Tiger","Fox","Rabbit","Lappord","Dear","Crocodile"]
    
    var body: some View {
//        NavigationView{
            List {
                ForEach(
                    animals,
                    id: \.self
                ) { fruit in
                    Text(fruit)
                }
                .onDelete { self.delete(at :$0) }
                .onMove(perform: { indices, newOffset in
                    print($animals)
                    move(from: indices, to: newOffset)
                })
                .onChange(of: "Value", perform: { value in
                    print("new val",value)
                })
            }
            .navigationTitle("Powerfull Animals")
            .toolbar { EditButton() }
//        }
    }
    
    func delete(at offsets: IndexSet) {
        animals.remove(atOffsets: offsets)
    }
    
    func move(from Offset1 : IndexSet , to Offset2: Int) {
        print("offset 1 :",Offset1)
        print("offset 2:",Offset2)
        animals.move(fromOffsets: Offset1, toOffset: Offset2)
    }
}

struct EditBoxDemo_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonDemo()
    }
}
