//
//  CounterView.swift
//  CountingApp
//
//  Created by tommyhan on 4/12/2023.
//

import SwiftUI

struct CounterView: View {
    @ObservedObject var state: AppState
    
    var body: some View {
        VStack {
            HStack {
                Button(action: { state.count -= 1 }) {
                    Text("-")
                }
                Text("\(state.count)")
                // Part 1 Exercise 2 + 3
                    .foregroundStyle(isPrime(state.count) ? .green : .red)
                Button(action: { state.count += 1 }) {
                    Text("+")
                }
            }
            Button(action: { state.count }) {
                Text("Is this prime?")
            }
            Button(action: {}) {
                Text("What is the \(ordinal(state.count)) prime?")
            }
        }
        .font(.title)
        .navigationTitle("Counter Demo")
    }
}

#Preview {
    CounterView(state: AppState())
}
