//
//  ListRowItem.swift
//  Devote
//
//  Created by MacBook Pro on 31/10/2026.
//

import SwiftUI
internal import CoreData

struct ListRowItem: View {
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .padding(.vertical, 15)
                .animation(.default, value: item.completion)
        
        }
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange, perform: {
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
    }
}


