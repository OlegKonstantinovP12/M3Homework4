//
//  ContentViewModel.swift
//  M3Homework4
//
//  Created by Oleg Konstantinov on 29.12.2025.
//


import Combine

class ContentViewModel: ObservableObject {
    @Published var news: [News] = []
    
    private let networkManager = NetworkManager()
    
    private func getAllNews() {
        let requestNews = networkManager.getNews()
        self.news = requestNews
    }
    
    func refresh() {
        getAllNews()
    }
}
