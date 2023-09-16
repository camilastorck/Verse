//
//  HomeViewModel.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    
    let books: [Book] = [
        Book(image: "hp7", title: "Harry Potter y Las Reliquias de la Muerte", author: "JK Rowling", progress: 20, pages: 790, summary: "PLACEHOLDER".localized, language: "Español", genre: .fiction, review: 4.8),
        Book(image: "sld", title: "The Spanish Love Deception", author: "Elena Armas", progress: 70, pages: 580, summary: "PLACEHOLDER".localized, language: "Inglés", genre: .romance, review: 4.7),
        Book(image: "hp5", title: "Harry Potter y La Orden del Fénix", author: "JK Rowling", progress: 80, pages: 780, summary: "PLACEHOLDER".localized, language: "Inglés", genre: .fiction, review: 4.9),
        Book(image: "sld", title: "The Spanish Love Deception", author: "Elena Armas", progress: 70, pages: 580, summary: "PLACEHOLDER".localized, language: "Inglés", genre: .romance, review: 4.3),
        Book(image: "hp7", title: "Harry Potter y Las Reliquias de la Muerte", author: "JK Rowling", progress: 20, pages: 180, summary: "PLACEHOLDER".localized, language: "Español", genre: .fiction, review: 4.8)
    ]
}
