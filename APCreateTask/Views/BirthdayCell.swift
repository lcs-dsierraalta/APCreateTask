//
//  BirthdayCell.swift
//  APCreateTask
//
//  Created by Diego Sierraalta on 2022-03-26.
//

import SwiftUI

struct BirthdayCell: View {
    
    var birthday: Person
    
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