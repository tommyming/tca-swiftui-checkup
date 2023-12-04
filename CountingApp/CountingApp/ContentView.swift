//
//  ContentView.swift
//  CountingApp
//
//  Created by tommyhan on 29/11/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var state: AppState
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CounterView(state: state)) {
                    Text("Counter Demo")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("Favourite Primes")
                }
            }
            .navigationTitle("State Management")
        }
    }
}

#Preview {
    ContentView(state: AppState())
}
