//
//  BirthdayCell.swift
//  APCreateTask
//
//
//

import SwiftUI

struct BirthdayCell: View {
    
   @ObservedObject var birthday: Person
    
    var body: some View {
        HStack {
            Text(birthday.name)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
            Spacer()
            
            Text(birthday.date, style: .date)
                .fontWeight(.bold)
                .multilineTextAlignment(.trailing)
                .padding(.trailing)
        }
    }
}

struct BirthdayCell_Previews: PreviewProvider {
    static var previews: some View {
        BirthdayCell(birthday: testData[0])
    }
}
