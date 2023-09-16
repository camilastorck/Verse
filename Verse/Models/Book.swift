//
//  Book.swift
//  Verse
//
//  Created by Camila Storck on 14/09/2023.
//

import Foundation

struct Book: Identifiable, Hashable {
    var id: Int? = nil
    let image: String
    let title: String
    let author: String
    let progress: CGFloat
    let pages: Int
    let summary: String
    let language: String
    let genre: BookGenre
    let review: Double
    
    static let emptyBook: Book = Book(
        image: "emptyBook",
        title: "Not Specified",
        author: "Not Specified",
        progress: 0,
        pages: 0,
        summary: "Not Specified",
        language: "Not Specified",
        genre: .unspecified,
        review: 0.0
    )
}

enum BookGenre: CaseIterable, Codable {
    case all
    case romance
    case terror
    case historic
    case comedy
    case fiction
    case unspecified
    
    var name: String {
        switch self {
        case .all:
            return "Todos"
        case .romance:
            return "Romance"
        case .terror:
            return "Terror"
        case .historic:
            return "Histórico"
        case .comedy:
            return "Comedia"
        case .fiction:
            return "Ficción"
        case .unspecified:
            return "Sin Categoría"
        }
    }
}
