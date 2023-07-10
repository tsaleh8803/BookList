//
//  ExpandedViewController.swift
//  MVVMtest
//
//  Created by Mac on 06/07/2023.
//

import UIKit

class ExpandedViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var pubDateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var titleText: String?
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillData(book: book)
    }
    
    func fillData(book: Book?) {
        if let clickedBook = book {
            titleLabel.text = clickedBook.title
            authorLabel.text = "Author: \(clickedBook.author)"
            genreLabel.text = "Genre: \(clickedBook.genre)"
            publisherLabel.text = "Publisher: \(clickedBook.publisher)"
            
            if let publishingDate = clickedBook.publishingDate {
                pubDateLabel.text = "Publishing Date: \(publishingDate)"
            } else {
                pubDateLabel.text = "Publishing Date:"
            }
            
            priceLabel.text = "Price: \(clickedBook.price)"
            imageView.image = UIImage(named: clickedBook.title)
        }
    }
}
