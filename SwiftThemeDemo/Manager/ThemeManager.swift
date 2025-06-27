//
//  ThemeManager.swift
//  SwiftThemeDemo
//
//  Created by Admin on 26/06/25.
//

import Foundation
import SwiftUI

class ThemeManager: ObservableObject {
    @AppStorage("theme") var themeRaw:String = "system"
    
    var type: ThemeType {
            get {
                ThemeType(rawValue: themeRaw) ?? .system
            }
            set {
                themeRaw = newValue.rawValue
            }
        }
    
    
    func currentTheme(for colorScheme: ColorScheme) -> AppTheme {
            switch type {
            case .light:
                return .light
            case .dark:
                return .dark
            case .system:
                type = (colorScheme == .dark) ? .dark : .light //Set type according to system theme
                return (colorScheme == .dark) ? .dark : .light
            }
        }
    
    func toggleTheme() {
            switch type {
            case .light: type = .dark
            case .dark: type = .light
            case .system: type = (type == .light) ? .dark : .light
        }
    }
}

enum ThemeType: String {
    case light, dark, system
}
