//
//  WidgetApple.swift
//  WidgetApple
//
//  Created by Ozan Çiçek on 28.02.2023.
//

import Intents
import SwiftUI
import WidgetKit

struct Provider: IntentTimelineProvider {
    @AppStorage("apple", store: UserDefaults(suiteName: "group.com.ozancicek.AppleWidgetApp"))

    var appleData: Data = Data()

    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), apple: SuperApple(image: "macbook", name: "Macbook", model: "m1"))
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> Void) {
        if let apple = try? JSONDecoder().decode(SuperApple.self, from: appleData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, apple: apple)
            completion(entry)
        }
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
        if let apple = try? JSONDecoder().decode(SuperApple.self, from: appleData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, apple: apple)
            let timeLine = Timeline(entries: [entry], policy: .never)
            completion(timeLine)
        }
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let apple: SuperApple
}

struct WidgetAppleEntryView: View {
    var entry: Provider.Entry

    var body: some View {
        CircularImageView(image: entry.apple.image)
    }
}

struct WidgetApple: Widget {
    let kind: String = "WidgetApple"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetAppleEntryView(entry:  entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}
