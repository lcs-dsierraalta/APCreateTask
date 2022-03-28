//
//  ContentView.swift
//  APCreateTask
//
//  Created by Diego Sierraalta on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

            List {
                BirthdayCell(birthday: testData[0])
                BirthdayCell(birthday: testData[1])
                BirthdayCell(birthday: testData[2])
            }
            .navigationTitle("Birthdays")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
