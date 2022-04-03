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
        
        List(filter(originalList: store.birthdays, using: searchTerm)) { Person in 
                
                ForEach(store.birthdays.sorted(by: { oneBirthday, nextBirthday in return oneBirthday.name < nextBirthday.name})) { birthday in
                    
                    BirthdayCell(birthday: birthday)
                    
                }
                .onDelete(perform: delete)
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
            
            return store.birthdays.filter {$0.name.contains(searchTerm)}
            
        }
        
    }
    
    func delete(at offsets: IndexSet) {
        store.birthdays.remove(atOffsets: offsets)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}

