//
//  CheckboxStyle.swift
//  Devote
//
//  Created by MacBook Pro on 31/10/2026.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
       return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
               .foregroundColor(configuration.isOn ? .pink : .primary)
               .font(.system(size: 30, weight: .semibold, design: .rounded))
               .onTapGesture {
                   configuration.isOn.toggle()
                   feedback.notificationOccurred(.success)
                   if configuration.isOn {
                       playSound(sound: "sound-rise", type: "mp3")
                   } else {
                       playSound(sound: "sound-tap", type: "mp3")
                   }
               }
           configuration.label
        }
    }
        
}

#Preview {
    VStack {
        Toggle("Complete Task", isOn: .constant(false))
            .toggleStyle(CheckboxStyle())

        Toggle("Completed Task", isOn: .constant(true))
            .toggleStyle(CheckboxStyle())
    }
    .padding()
}
