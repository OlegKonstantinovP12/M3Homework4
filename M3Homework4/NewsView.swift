//
//  NewsView.swift
//  M3Homework4
//
//  Created by Oleg Konstantinov on 29.12.2025.
//

import SwiftUI

struct NewsView: View {
    var title: String
    var description: String
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            Text(title)
                .font(.system(size: 16, weight: .bold))
            Text(description)
                .font(.system(size: 13))
        }
        .padding(EdgeInsets(top: 26, leading: 23, bottom: 24, trailing: 26))
        .background(.sweetGrey)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    NewsView(title: "Заголовок Поста", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam")
}
