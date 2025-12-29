//
//  ContentView.swift
//  M3Homework4
//
//  Created by Oleg Konstantinov on 29.12.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        VStack {
            ForEach(viewModel.news) { note in
                NewsView(title: note.title, description: note.description)
            }
            Spacer()
            Button {
                viewModel.refresh()
            } label: {
                HStack {
                    Text("Обновить ленту")
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .background(.black)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
