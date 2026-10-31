//
//  DevoteWidgetBundle.swift
//  DevoteWidget
//
//  Created by MacBook Pro on 01/11/2026.
//

import WidgetKit
import SwiftUI

@main
struct DevoteWidgetBundle: WidgetBundle {
    var body: some Widget {
        DevoteWidget()
        DevoteWidgetControl()
        DevoteWidgetLiveActivity()
    }
}
