//
//  ContentView.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 08.09.2024.
//

import SwiftUI

enum TabList: String {
    case first, second, third
}
extension TabList: CustomStringConvertible {
    var description: String { self.rawValue.capitalized }
}

struct ContentView: View {
    private var marvellHero: [MarvellHero] = MarvellHero.loadResource()

    @State private var currentTab = TabList.first
    @State private var path: [String] = []

    var body: some View {
        TabView(selection: $currentTab) {
            FirstTabView(currentTab: $currentTab, path: $path)
            SecondTabView(marvellHero: marvellHero, path: $path)
            ThirdTabView()
        }
        .onChange(of: path) {
            print("Path:", path)
        }
    }
}

#Preview {
    ContentView()
}
