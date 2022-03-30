//
//  AddBirthday.swift
//  APCreateTask
//
//  Created by Diego Sierraalta on 2022-03-28.
//

import SwiftUI

struct AddBirthday: View {
    
//    @ObservedObject var store: BirthdayStore
    
    @State private var name = ""
    @State private var date = Date()
    
    var body: some View {
        
        NavigationView {
            VStack {
                Form {
                    
                TextField("Name", text: $name)
                
                DatePicker("Date:", selection: $date)
                
                }
            }
            .navigationTitle("New Birthday")
        }
        
    }
}

struct AddBirthday_Previews: PreviewProvider {
    static var previews: some View {
        AddBirthday()
    }
}
