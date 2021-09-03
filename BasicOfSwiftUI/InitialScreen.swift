//
//  InitialScreen.swift
//  BasicOfSwiftUI
//
//  Created by Mind on 02/02/21.
// this screen is used to show list of task and to navigate to that screen using navigation link

import SwiftUI

struct InitialScreen: View {
    @State var taskList = ["Button","TextField_&_TextEditor","Text_&_Image","Toggle","EditButton","Slider","Stacks","Stepper","ProgressView","SecureField","alertDemo","PickersDemo","ColorPicker","DatePicker","Form","ContextMenu","Group","GroupBox","Link","PropertyWrappersDemo"]
    @State var currentTask = ""
    
    var body: some View {
        NavigationView {
            List{
                ForEach(taskList,id : \.self) { task in
                    NavigationLink(
                        destination: dynamicView(viewname: task),
                        label: {
                            Text(task)
                        })
                        
                }
                
            }
            .navigationBarTitle("TaskList")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

struct InitialScreen_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreen()
    }
}

struct dynamicView : View {
    @State var viewname = ""
    var body : some View {
        switch viewname {
        case "Button":
            ButtonDemo()
        case "TextField_&_TextEditor":
            TextFiledDemo()
        case "Toggle":
            ToggleDemo()
        case "Text":
            ContentView()
        case "EditButton":
            EditButtonDemo()
        case "Slider":
            SliderDemo()
        case "Stacks":
            StackDemo()
        case "Stepper":
            StepperDemo()
        case "ProgressView":
            ProgressViewDemo()
        case "SecureField":
            SecureFieldDemo()
        case "alertDemo":
            AlertDemo()
        case "PickersDemo":
            PickersDemo()
        case "ColorPicker":
            ColorPickerDemo()
        case "DatePicker":
            DatePickerDemo()
        case "Form":
            FormDemo()
        case "ContextMenu":
            ContextDemo()
        case "Group":
            GroupDemo()
        case "GroupBox":
            GroupBoxDemo()
        case "Link":
            LinkDemo()
        default:
            PropertyWrappersDemo()
        }
    }
}
