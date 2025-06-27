//
//  ContentView.swift
//  SwiftThemeDemo
//
//  Created by Admin on 26/06/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.colorScheme) var colorScheme //accesses the current system color scheme 
    
    var body: some View {
        let theme = themeManager.currentTheme(for: colorScheme)
            VStack {
                Text("Hello, Themed World!")
                    .font(theme.font)
                    .foregroundColor(theme.textColor)
                    .padding()

                Button("Toggle Theme") {
                    withAnimation(.easeInOut(duration: 0.5)) {
                            themeManager.toggleTheme()
                        }
                }
                .padding()
                .background(theme.primaryColor)
                .foregroundColor(theme.backgroundColor)
                .cornerRadius(10)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(theme.backgroundColor)
            .ignoresSafeArea()
        }
}

#Preview {
    ContentView()
        .environmentObject(ThemeManager())
}
