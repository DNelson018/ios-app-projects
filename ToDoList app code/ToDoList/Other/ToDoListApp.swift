//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            WorkingView()
        }
    }
}
