//
//  LocationViewController.swift
//  RickAndMorty
//
//  Created by Алина Николенко on 25.11.2022.
//  Copyright © 2022 Alvisso. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemMenuArray: [Menu] = {
    var blankMenu = Menu()
    blankMenu.name = "Place"
    blankMenu.imageName = "kola"
    return [blankMenu]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension LocationViewController: UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemMenuArray.count
    }
    

    func collectionView(_ collectionView:UICollectionView, cellForItemAt indexPath:IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCollectionViewCell {
           
            itemCell.menu = itemMenuArray[indexPath.row]
            return itemCell
        }
        return UICollectionViewCell()
    }
}
