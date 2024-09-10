//
//  MarvellHero.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 09.09.2024.
//

import Foundation

struct MarvellHero: Codable {
    let name: String
    let text: String
    let icon: URL
    let wiki: URL
}

extension MarvellHero: Identifiable {
    var id: String { name }
}

extension MarvellHero: Hashable {
    var hashValue: String { name }
}