//
//  FirstTabView.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 09.09.2024.
//

import SwiftUI

struct FirstTabView: View {
    @Binding var currentTab: TabList
//    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Text("FirstTabView")
            Spacer()
            Button("The best hero: Thor") {
                currentTab = .second
                
            }
            .padding()
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

//#Preview {
//    FirstTabView(selection: Binding<TabList.first.rawValue>)
//}
