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
                NavigationLink(destination: ArticleDetailView(article: article)) {
                    ArticleRowView(article: article)
                }
            }
            .navigationTitle("⚽ Actus Foot")
        }
        .onAppear {
            viewModel.fetchArticles()
        }
    }
}
