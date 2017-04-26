//
//  BookPagerController.swift
//  KindleApp
//
//  Created by Gaston Seneza on 4/25/17.
//  Copyright © 2017 GastonSeneza. All rights reserved.
//

import UIKit

class BookPagerController: UICollectionViewController {
    override func viewDidLoad() {
        collectionView?.backgroundColor = .white
        navigationItem.title = "BookName"
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}
