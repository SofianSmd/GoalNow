//
//  ArticleDetailView.swift
//  GoalNow
//
//  Created by Sofian Smimid on 09/06/2025.
//


import SwiftUI

struct ArticleDetailView: View {
    let article: Article

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: URL(string: article.imageUrl)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray.opacity(0.2)
                }
                .frame(height: 200)
                .clipped()
                .cornerRadius(12)

                Text(article.title)
                    .font(.title2)
                    .bold()

                Text("Publié le \(article.publishedAt)")
                    .font(.caption)
                    .foregroundColor(.gray)

                Text(article.description)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Détail")
        .navigationBarTitleDisplayMode(.inline)
    }
}