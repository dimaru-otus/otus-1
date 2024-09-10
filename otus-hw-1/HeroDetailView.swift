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
    HeroDetailView(MarvellHero(
        name: "Thor",
        text: "Thor Odinson is a superhero appearing in American comic books published by Marvel Comics. ",
        icon: .init(string:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1rUF0Ce47WqKPwvugGrPZ4JwDm_DCilFpzZw00fzdXFJCaSSYASyD9m0&s=0")!,
        wiki: .init(string: "https://en.wikipedia.org/wiki/Thor_(Marvel_Comics)")!)
    )
}
