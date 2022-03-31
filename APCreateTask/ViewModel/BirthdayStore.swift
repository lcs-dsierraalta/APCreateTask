//
//  BirthdayStore.swift
//  APCreateTask
//
//  Created by Diego Sierraalta on 2022-03-28.
//

import Foundation

class BirthdayStore: ObservableObject {
   @Published var birthdays: [Person] = []
}

let testStore = BirthdayStore()
