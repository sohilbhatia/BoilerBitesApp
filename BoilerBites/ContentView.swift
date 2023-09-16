//
//  ContentView.swift
//  BoilerBites
//
//  Created by Sohil Bhatia on 9/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DetailView(title: "Hillenbrand")) {
                    Text("Hillenbrand")
                }
                NavigationLink(destination: DetailView(title: "Wiley")) {
                    Text("Wiley")
                }
                NavigationLink(destination: DetailView(title: "Windsor")) {
                    Text("Windsor")
                }
            }
            .navigationTitle("Your Dining Courts")
        }
    }
}

struct DetailView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .navigationBarTitle(title)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
