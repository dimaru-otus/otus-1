//
//  SecondTabView.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 09.09.2024.
//

import SwiftUI

struct SecondTabView: View {
//    @State var path = NavigationPath()
    
    static var marvellHero: [MarvellHero] = {
        let marvellHeroURL = Bundle.main.url(forResource: "MarvellHero", withExtension: "json")!
        let data = try! Data(contentsOf: marvellHeroURL)
        let decoder = JSONDecoder()
        let hero = try! decoder.decode([MarvellHero].self, from: data)
        return hero
    }()

    var body: some View {
        NavigationStack {
            List(SecondTabView.marvellHero) { hero in
                NavigationLink(value: hero) {
                    AsyncImage(url: hero.icon) {
                        $0.resizable()
                    } placeholder: {
                        ProgressView()
                    }.frame(width: 30.0, height: 40.0)
                    Text(hero.name)
                }
            }
            .navigationTitle("Marvell heroes")
            .navigationDestination(for: MarvellHero.self) { hero in
                HeroDetailView(hero)
            }
        }                
        .tag(TabList.second)
        .tabItem {
            Label(TabList.second.description, systemImage: "2.circle.fill")
        }

    }
}

#Preview {
    SecondTabView()
}
