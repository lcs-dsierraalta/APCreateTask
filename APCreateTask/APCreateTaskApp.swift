//
//  APCreateTaskApp.swift
//  APCreateTask
//
//  Created by Diego Sierraalta on 2022-03-25.
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
