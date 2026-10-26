//
//  ContentView.swift
//  EvenEnOneven
//
//  Created by Jordan on 12/10/2026.
//

import SwiftUI

struct ContentView: View {
    @State var invoer: String = ""
    @State var uitvoer: String = ""
    
    var body: some View {
        VStack {
            HeaderView("Even En Oneven", subtitle: "@state, gehele deling, tertiare operator, textfield", desc: "de app berekent van een gegeven getal of het even of oneven is...", back: .green, textColor: .yellow)
            
            VStack {
                TextField(text: $invoer, label: {
                    Text("Geef een getalin: ")
                })
                .padding()
                
                Button("Even of Oneven?") {
                    if let getal = Int(invoer) {
 /*                       if (getal % 2) == 0 {
                            uitvoer = "even"
                        } else{
                            uitvoer = "oneven"
                       }
  */
                        uitvoer = getal % 2 == 0 ? "Even":"Oneven"
                    } else {
                        uitvoer = "type een getal"
                    }
                }
                
                Spacer()
                Text(uitvoer)
                Spacer()
            }
            .font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}

