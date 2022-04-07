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
    Person(name: "Person 1", date: Date()),
    Person(name: "Friend", date: Date()),
    Person(name: "Dog", date: Date())
]
