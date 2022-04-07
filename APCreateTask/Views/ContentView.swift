//
//  ContentView.swift
//  APCreateTask
//
// 
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: BirthdayStore
    
    @State private var showingAddBirthday = false
    
    @State private var searchTerm = ""
    
    var body: some View {
        
        List(filter(originalList: store.birthdays.sorted(by: { oneBirthday, nextBirthday in return oneBirthday.name < nextBirthday.name}), using: searchTerm)) { birthday in
            
            BirthdayCell(birthday: birthday)
            
            
        }
        .searchable(text: $searchTerm)
        .navigationTitle("Birthdays")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddBirthday = true
                }
            }
        }
        .sheet(isPresented: $showingAddBirthday) {
            AddBirthday(store: store, showing: $showingAddBirthday)
        }
        
    }
    
    func filter(originalList: [Person], using term: String) -> [Person] {
        
        if term.isEmpty {
            
            return originalList
            
        } else {
            
            var filteredResults: [Person] = []
            
            for currentBirthday in originalList {
                
                if currentBirthday.name.contains(term) {
                    filteredResults.append(currentBirthday)
                    
                }
                
            }
            
            return filteredResults
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}

