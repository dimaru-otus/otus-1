//
//  SecondTabView.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 09.09.2024.
//

import SwiftUI

struct SecondTabView: View {
    var marvellHero: [MarvellHero]
    @Binding var path: [String]

    var body: some View {
        NavigationStack(path: $path) {
            List(marvellHero) { hero in
                NavigationLink(value: hero.name) {
                    AsyncImage(url: hero.icon) {
                        $0.resizable()
                    } placeholder: {
                        ProgressView()
                    }.frame(width: 30.0, height: 40.0)
                    Text(hero.name)
                }
            }
            .navigationTitle("Marvell's Heroes")
            .navigationDestination(for: String.self) { name in
                if let hero = marvellHero.first(where: { $0.name == name}) {
                    HeroDetailView(hero)
                }
            }
        }
        .tag(TabList.second)
        .tabItem {
            Label(TabList.second.description, systemImage: "2.circle.fill")
        }
    }
}

#Preview {
    SecondTabView(marvellHero: MarvellHero.loadResource(), path: .constant([]))
}
