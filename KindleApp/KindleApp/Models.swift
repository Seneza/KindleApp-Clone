//
//  Models.swift
//  KindleApp
//
//  Created by Gaston Seneza on 4/23/17.
//  Copyright © 2017 GastonSeneza. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let image: UIImage
    let pages: [Page]
    
    init(title: String, author: String, image: UIImage, pages: [Page]) {
        self.title  = title
        self.author = author
        self.image  = image
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
