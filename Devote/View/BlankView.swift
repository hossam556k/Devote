//
//  BlankView.swift
//  Devote
//
//  Created by MacBook Pro on 31/10/2026.
//

import SwiftUI

struct BlankView: View {
    // MARK: - PROPRTEY
    var backgroundColor: Color
    var backgroundOpacity: Double
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(backgroundOpacity)
        .blendMode(.overlay)
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    BlankView(backgroundColor: Color.black, backgroundOpacity: 0.3)
}
