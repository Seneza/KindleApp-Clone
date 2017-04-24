//
//  BookCell.swift
//  KindleApp
//
//  Created by Gaston Seneza on 4/24/17.
//  Copyright © 2017 GastonSeneza. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
     override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        print("Cell is being initialized...")
        backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
