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
    
    var body: some View {
        
            List {
                
                ForEach(store.birthdays.sorted(by: { oneBirthday, nextBirthday in return oneBirthday.name < nextBirthday.name})) { birthday in
                    
                    BirthdayCell(birthday: birthday)
                    
                }
                .onDelete(perform: delete)
            }
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

