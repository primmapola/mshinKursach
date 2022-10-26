//
//  Books.swift
//  mshinKursach
//
//  Created by Grigory Don on 26.10.2022.
//

import Foundation

struct Book {
    let name: String
    let author: String
    
    var description: String {
        "Название: \(name) Автор: \(author)"
    }
    
    static func getBooks() -> [Book] {
        [
        Book(name: "Книга 1", author: "Автор 1"),
        Book(name: "Book 2", author: "Author 2"),
        Book(name: "Book 3", author: "Author 3")
        ]
        
    }
}
