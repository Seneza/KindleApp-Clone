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
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "KindleApp"
        setupBooks()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedBook = self.books?[indexPath.row]
        //print(book?.title ?? "no book")
        
        let layout = UICollectionViewFlowLayout()
        let bookPagerController = BookPagerController(collectionViewLayout: layout)
        
        bookPagerController.book = selectedBook
        
        let navigationController = UINavigationController(rootViewController: bookPagerController)
        present(navigationController, animated: true, completion: nil)
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! BookCell
        
        let book = books?[indexPath.row]
        cell.book = book
        
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
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", image: #imageLiteral(resourceName: "steve_jobs"), pages: pages)
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Hecraft", image: #imageLiteral(resourceName: "bill_gates"), pages: [
            Page(number: 1, text:"Text for p1"),
            Page(number: 2, text: "Text for p2"),
            Page(number: 3, text: "Text for p3")
            ])
        
        self.books = [book, book2]

    }

}

