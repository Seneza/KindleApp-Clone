//
//  BookCell.swift
//  KindleApp
//
//  Created by Gaston Seneza on 4/24/17.
//  Copyright © 2017 GastonSeneza. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "This is the first text inside the label"
        label.numberOfLines = 0
        label.backgroundColor = .blue
        return label
    }()
    
     override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .yellow
        addSubview(coverImageView)
        coverImageView.frame = CGRect(x: 8, y: 8, width: 50, height: 50)
        addSubview(titleLabel)
        titleLabel.frame = CGRect(x: 60, y: 20, width: UIScreen.main.bounds.width, height: 80)//magic numbers: Guessing coordinates when you use frames
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
