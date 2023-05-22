//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Станислав Шульц on 22.05.2023.
//

import SwiftUI
import FirebaseCore



@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
