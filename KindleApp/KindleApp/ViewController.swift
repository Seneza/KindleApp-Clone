//
//  ViewController.swift
//  KindleApp
//
//  Created by Gaston Seneza on 4/23/17.
//  Copyright © 2017 GastonSeneza. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]) {
        self.title  = title
        self.author = author
        self.pages  = pages
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}

class ViewController: UITableViewController {
    
    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // can provide custom code starting from here
        view.backgroundColor = .red
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setup() {
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "Text for second page")
        let pages = [page1, page2]
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: pages)
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Hecraft", pages: [
            Page(number: 1, text:"Text for p1"),
            Page(number: 2, text: "Text for p2"),
            Page(number: 3, text: "Text for p3")
            ])
        
        self.books = [book, book2]
        if let unwrappedBooks = self.books {
            for book in unwrappedBooks {
                print(book.title)
                for page in book.pages {
                    print(page.text)
                }
            }
        }

    }

}

