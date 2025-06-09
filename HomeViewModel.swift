//
//  HomeViewModel.swift
//  GoalNow
//
//  Created by Sofian Smimid on 09/06/2025.
//


import Foundation

class HomeViewModel: ObservableObject {
    @Published var articles: [Article] = []

    func fetchArticles() {
        guard let url = Bundle.main.url(forResource: "sampleNews", withExtension: "json") else { return }
        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode([Article].self, from: data)
            articles = decoded
        } catch {
            print("Erreur de parsing : \(error)")
        }
    }
}