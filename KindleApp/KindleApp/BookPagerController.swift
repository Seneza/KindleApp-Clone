//
//  BookPagerController.swift
//  KindleApp
//
//  Created by Gaston Seneza on 4/25/17.
//  Copyright © 2017 GastonSeneza. All rights reserved.
//

import UIKit

class BookPagerController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        collectionView?.backgroundColor = .white
        navigationItem.title = "BookName"
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal
        layout?.minimumLineSpacing = 0
        collectionView?.isPagingEnabled = true
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        if indexPath.item % 2 == 0 {
            cell.backgroundColor = .red
        } else {
            cell.backgroundColor = .brown
        }
        return cell
    }
}
