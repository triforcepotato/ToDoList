//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewTask = false
    @State var toDoItems: [ToDoItem] = []
    
    var body: some View {
       
        VStack {
            
            HStack {
                Text("To Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                    
                }) {
                Text("+")
                }//button
                
                
            }//hstack
            .padding()
            Spacer()
            
            List {
                    ForEach (toDoItems) { toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                        }
            } //list
            
        }//vstack
        
        if showNewTask {
            NewToDoView(toDoItems: $toDoItems, showNewTask: $showNewTask, title: "", isImportant: false)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
