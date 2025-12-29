//
//  News.swift
//  M3Homework4
//
//  Created by Oleg Konstantinov on 29.12.2025.
//

import Foundation

struct News: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let description: String
}
