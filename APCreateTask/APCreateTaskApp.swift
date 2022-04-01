//
//  APCreateTaskApp.swift
//  APCreateTask
//
// 
//

import SwiftUI

@main
struct APCreateTaskApp: App {
    
    @StateObject private var store = BirthdayStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(store: store)
            }
        }
    }
}
