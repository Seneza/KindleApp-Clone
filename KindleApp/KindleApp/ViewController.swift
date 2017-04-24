//
//  ViewController.swift
//  KindleApp
//
//  Created by Gaston Seneza on 4/23/17.
//  Copyright © 2017 GastonSeneza. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    
    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // can provide custom code starting from here
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "KindleApp"
        setupBooks()
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let book = books?[indexPath.row]
        cell.textLabel?.text = book?.title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = books?.count else { return 0 }
        return count
    }

    func setupBooks() {
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

    }

}

