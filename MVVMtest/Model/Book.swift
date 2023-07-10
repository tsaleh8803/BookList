//
//  Book.swift
//  MVVMtest
//
//  Created by Mac on 06/07/2023.
//

import Foundation

struct Book {
    var title, author, publisher, genre : String?
    var publishingDate, price : Int?
}

let books = [
    Book(title: "The Stranger", author: "Albert Camus", publisher: "Penguin", genre: "Philosophy", publishingDate: 1942, price: 10),
    Book(title: "1984", author: "George Orwell", publisher: "publisherX", genre: "Science Fiction", publishingDate: 1949, price: 8),
    Book(title: "The Hunger Games", author: "Suzanne Collins", publisher: "publisherY", genre: "Science Fiction", publishingDate: 2008, price: 12)
]
