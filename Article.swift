//
//  Article.swift
//  GoalNow
//
//  Created by Sofian Smimid on 09/06/2025.
//


import Foundation

struct Article: Identifiable, Decodable {
    let id = UUID()
    let title: String
    let description: String
    let imageUrl: String
    let source: String
    let publishedAt: String

    enum CodingKeys: String, CodingKey {
        case title, description, imageUrl = "urlToImage", source, publishedAt
    }

    struct Source: Decodable {
        let name: String
    }
}