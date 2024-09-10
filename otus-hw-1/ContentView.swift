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
    @State private var currentTab = TabList.first
    var body: some View {
        TabView(selection: $currentTab) {
            FirstTabView(currentTab: $currentTab)
            SecondTabView()
            ThirdTabView()
        }
    }
}

#Preview {
    ContentView()
}
