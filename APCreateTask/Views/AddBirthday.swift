//
//  AddBirthday.swift
//  APCreateTask
//
// 
//

import SwiftUI

struct AddBirthday: View {
    
    @ObservedObject var store: BirthdayStore
    
    @State private var name = ""
    @State private var date = Date()
    
    @Binding var showing: Bool
    
    var body: some View {
        
        NavigationView {
            VStack {
                Form {
                    
                TextField("Name", text: $name)
                
                DatePicker("Date:", selection: $date)
                
                }
            }
            .navigationTitle("New Birthday")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveBirthday()
                    }
                }
            }
        }
        
    }
    
    func saveBirthday() {
        
        store.birthdays.append(Person(name: name,
                                      date: date))
        
        showing = false
        
    }
    
}

struct AddBirthday_Previews: PreviewProvider {
    static var previews: some View {
        AddBirthday(store: testStore ,showing: .constant(true))
    }
}
