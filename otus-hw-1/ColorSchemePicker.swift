//
//  ColorSchemePicker.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 11.09.2024.
//

import SwiftUI

struct ColorSchemePicker: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var currentColorScheme: ColorScheme
    init() {
        self.currentColorScheme = .light
    }
    var body: some View {
        VStack {
            Picker("Select color scheme", selection: $currentColorScheme) {
                Text("Light").tag(ColorScheme.light)
                Text("Dark").tag(ColorScheme.dark)
            }
            .pickerStyle(.segmented)
            .padding()
        }
        .onChange(of: currentColorScheme) {
            print(currentColorScheme)
//            colorScheme = currentColorScheme
        }
        .onAppear {
            currentColorScheme = colorScheme
        }
    }
}

#Preview {
    ColorSchemePicker()
}
