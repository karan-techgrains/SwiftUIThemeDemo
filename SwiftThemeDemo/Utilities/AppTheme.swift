//
//  AppTheme.swift
//  SwiftThemeDemo
//
//  Created by Admin on 26/06/25.
//

import SwiftUI

struct AppTheme {
    let primaryColor: Color
    let secondaryColor: Color
    let backgroundColor: Color
    let textColor: Color
    let font: Font
}

struct AdaptiveTheme {
    static func current(for colorScheme: ColorScheme) -> AppTheme {
        switch colorScheme {
        case .dark:
            return .dark
        default:
            return .light
        }
    }
}

extension AppTheme {
    static let light = AppTheme(
        primaryColor: .blue,
        secondaryColor: .green,
        backgroundColor: .white,
        textColor: .black,
        font: .system(size: 16, weight: .regular)
    )
    
    static let dark = AppTheme(
        primaryColor: .purple,
        secondaryColor: .orange,
        backgroundColor: .black,
        textColor: .white,
        font: .system(size: 16, weight: .regular)
    )
}
