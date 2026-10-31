//
//  hideKeyboard.swift
//  Devote
//
//  Created by MacBook Pro on 31/10/2026.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
