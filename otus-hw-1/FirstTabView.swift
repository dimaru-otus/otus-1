//
//  FirstTabView.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 09.09.2024.
//

import SwiftUI

struct FirstTabView: View {
    @Binding var currentTab: TabList
    @Binding var path: [String]
    init(currentTab: Binding<TabList> = .constant(.first),
         path: Binding<[String]> = .constant([])) {
        _currentTab = currentTab
        _path = path
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("FirstTabView")
            Spacer()
            Group {
                Button("The hero: Thor") {
                    currentTab = .second
                    path = ["Thor"]
                }
                Button("The anti hero: Loki") {
                    currentTab = .second
                    path = ["Loki"]
                }
            }
            .padding()
            .frame(width: 180.0)
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(.blue, lineWidth: 1)
            )
            Spacer()
        }                
        .tag(TabList.first)
        .tabItem {
            Label(TabList.first.description, systemImage: "1.circle.fill")
        }
    }
}

#Preview {
    FirstTabView()
}
