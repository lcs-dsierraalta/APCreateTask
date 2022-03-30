//
//  ContentView.swift
//  APCreateTask
//
//  Created by Diego Sierraalta on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: BirthdayStore
    
    @State private var showingAddBirthday = false
    
    var body: some View {

            List {
                BirthdayCell(birthday: testData[0])
                BirthdayCell(birthday: testData[1])
                BirthdayCell(birthday: testData[2])
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}
