//
//  ContentView.swift
//  APCreateTask
//
//  Created by Diego Sierraalta on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Birthday App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            
            List {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
