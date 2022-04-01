//
//  BirthdayStore.swift
//  APCreateTask
//
//  
//

import Foundation

class BirthdayStore: ObservableObject {
   @Published var birthdays: [Person] = []
}

let testStore = BirthdayStore()
