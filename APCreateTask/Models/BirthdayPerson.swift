//
//  BirthdayPerson.swift
//  APCreateTask
//
// 
//

import Foundation

class Person: Identifiable, ObservableObject {
    
    var id = UUID()
    var name: String
    var date = Date()
    
    internal init(id: UUID = UUID(), name: String, date: Date) {
        self.id = id
        self.name = name
        self.date = date
    }
}

let testData = [
    Person(name: "Kia", date: Date()),
    Person(name: "Moritz", date: Date()),
    Person(name: "Diego", date: Date())
]
