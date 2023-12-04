//
//  AppState.swift
//  CountingApp
//
//  Created by tommyhan on 4/12/2023.
//

import Foundation
import Combine
import SwiftUI

class AppState: ObservableObject {
    @Published var count = 0
    @Published var isPresentingSheet: Bool = false
}

