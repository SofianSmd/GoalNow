//
//  ArticleRowView.swift
//  GoalNow
//
//  Created by Sofian Smimid on 09/06/2025.
//


import SwiftUI

struct ArticleRowView: View {
    let article: Article

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            AsyncImage(url: URL(string: article.imageUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(width: 100, height: 80)
            .cornerRadius(10)
            .clipped()

            VStack(alignment: .leading, spacing: 6) {
                Text(article.title)
                    .font(.headline)
                    .lineLimit(2)

                Text(article.source)
                    .font(.caption)
                    .foregroundColor(.secondary)

                Text(article.publishedAt)
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 8)
    }
}