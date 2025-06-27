//
//  SwiftThemeDemoApp.swift
//  SwiftThemeDemo
//
//  Created by Admin on 26/06/25.
//

import SwiftUI

@main
struct SwiftThemeDemoApp: App {
    @StateObject private var themeManager = ThemeManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
        }
    }
}
