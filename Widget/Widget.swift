//
//  Widget.swift
//  Widget
//
//  Created by Emin Bari on 12.08.2020.
//

import WidgetKit
import SwiftUI

@main
struct Config: Widget {
    private let kind: String = "Widget"
    var body: some WidgetConfiguration {
        StaticConfiguration(
            kind: kind,
            provider: DataProvider()
        ) { data in
            MainWidgetView(data: data)
        }
        .configurationDisplayName(Text("Bitcoin stocks"))
        .supportedFamilies([.systemSmall])
        .description(Text("Current Bitcoin exchange rate"))
    }
}
