//
//  Movie.swift
//  m18
//
//  Created by Nataly on 19.03.2023.
//

import Foundation

struct Movie: Codable {
    let title: String
    let description: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "description"
        case image = "image"
    }
}

