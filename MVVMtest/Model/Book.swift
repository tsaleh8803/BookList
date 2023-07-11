//
//  Book.swift
//  MVVMtest
//
//  Created by Mac on 06/07/2023.
//

import Foundation

struct Book {
    let title: String
    let author: String
    let publisher: String
    let genre : String
    let publishingDate: Int?
    let price : Int
}

let books = [
    Book(title: "The Stranger", author: "Albert Camus", publisher: "Penguin", genre: "Philosophy", publishingDate: 1942, price: 10),
    Book(title: "1984", author: "George Orwell", publisher: "publisherX", genre: "Science Fiction", publishingDate: nil, price: 8),
    Book(title: "The Hunger Games", author: "Suzanne Collins", publisher: "publisherY", genre: "Science Fiction", publishingDate: 2008, price: 12)
]
