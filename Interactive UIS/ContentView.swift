//
//  ContentView.swift
//  Interactive UIS
//
//  Created by Mia Elgort on 7/13/23.
//

import SwiftUI

struct ContentView: View {
   @State private var name = ""
    @State private var TextTitle = "What is your name?"
    var body: some View {
        VStack {
            Text(TextTitle)
                .font(.title)
                .fontWeight(.bold)
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
            Button("Submit name") {
               TextTitle = "Welcome, \(name) !"
               
            }
            .font(.title2)
           
        .buttonStyle (
            .borderedProminent)
        .tint(.teal)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
