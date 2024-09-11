//
//  HeroDetailView.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 09.09.2024.
//

import SwiftUI

struct HeroDetailView: View {
    private var hero: MarvellHero
    init(_ hero: MarvellHero) {
        self.hero = hero
    }
    
    var body: some View {
        AsyncImage(url: hero.icon)
        Link(destination: hero.wiki) {
            Text(hero.name)
                .font(.system(.title))
                .navigationDocument(hero.wiki)
        }
        Text(hero.text)
            .multilineTextAlignment(.leading)
            .padding(.all)
    }
}

#Preview {
    HeroDetailView(MarvellHero.loadResource().first!)
}
