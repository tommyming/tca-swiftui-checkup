//
//  CountingAppApp.swift
//  CountingApp
//
//  Created by tommyhan on 29/11/2023.
//

import SwiftUI

@main
struct CountingAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(state: AppState())
        }
    }
}
