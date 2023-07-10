//
//  ExpandedViewController.swift
//  MVVMtest
//
//  Created by Mac on 06/07/2023.
//

import UIKit

class ExpandedViewController: UIViewController {

    
    //private let viewModel: ViewModel = ViewModel()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var pubDateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var titleText: String?
    
    var book1: Book = Book(title: "The Stranger", author: "Albert Camus", publisher: "Penguin", genre: "Philosophy", publishingDate: 1942, price: 10)
    var book2: Book = Book(title: "1984", author: "George Orwell", publisher: "publisherX", genre: "Science Fiction", publishingDate: 1949, price: 8)
    var book3: Book = Book(title: "The Hunger Games", author: "Suzanne Collins", publisher: "publisherY", genre: "Science Fiction", publishingDate: 2008, price: 12)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if titleText != nil {
            titleLabel.text = titleText
        }
        fillData(bookTitle: titleText)
        
        
    }
    func fillData(bookTitle: String?){
        let books : [Book] = [book1,book2,book3]
        var clickedBook: Book?
        
        for book in books{
            if book.title == bookTitle{
                clickedBook = book
            }
        }
        
        if clickedBook != nil {
            authorLabel.text = "Author: \(clickedBook?.author ?? "")"
            genreLabel.text = "Genre: \(clickedBook?.genre ?? "")"
            publisherLabel.text = "Publisher: \(clickedBook?.publisher ?? "")"
            pubDateLabel.text = "Publishing Date: \(clickedBook?.publishingDate?.codingKey.stringValue ?? "")"
            priceLabel.text = "Price: \(clickedBook?.price?.codingKey.stringValue ?? "")"
            imageView.image = UIImage(named: bookTitle!)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
