//
//  BirthdayPerson.swift
//  APCreateTask
//
//  Created by Diego Sierraalta on 2022-03-26.
//

import Foundation

struct Person: Identifiable {
    
    var id = UUID()
    var name: String
    var date = Date()
}

let testData = [
    Person(name: "Kia", date: Date()),
    Person(name: "Moritz", date: Date()),
    Person(name: "Diego", date: Date())
]
