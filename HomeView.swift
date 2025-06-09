//
//  HomeView.swift
//  GoalNow
//
//  Created by Sofian Smimid on 09/06/2025.
//


import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.articles) { article in
                VStack(alignment: .leading, spacing: 8) {
                    Text(article.title)
                        .font(.headline)
                    Text(article.source)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("⚽ Actus Foot")
        }
        .onAppear {
            viewModel.fetchArticles()
        }
    }
}