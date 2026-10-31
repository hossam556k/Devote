//
//  Constant.swift
//  Devote
//
//  Created by MacBook Pro on 31/10/2026.
//

import Foundation
import SwiftUI

// MARK: - FORMATER

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

// MARK: - UI
var backgroundGradinet: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
// MARK: - UX
let feedback = UINotificationFeedbackGenerator()
