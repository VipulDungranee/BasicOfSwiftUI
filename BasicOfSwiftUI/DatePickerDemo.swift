//
//  DatePickerDemo.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 02/02/21.
//

import SwiftUI

struct DatePickerDemo: View {
    @State var selectedDate = Date()
    
    var body: some View {
        VStack {
            Label("Learning SwiftUI \n DatePicker", systemImage: "book.fill")
            Form {
                DatePicker("Select your birthDate", selection: $selectedDate,in: ...Date(),displayedComponents: [.date,.hourAndMinute])
                    .datePickerStyle(CompactDatePickerStyle())
            }
            
            Spacer()
        }
    }
}

struct DatePickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerDemo()
    }
}
