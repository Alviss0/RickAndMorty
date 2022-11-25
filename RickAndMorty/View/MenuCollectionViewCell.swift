//
//  MenuCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Алина Николенко on 25.11.2022.
//  Copyright © 2022 Alvisso. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var menu: Menu? {
        didSet {
            nameLabel.text = menu?.name
            if let image = menu?.imageName{
            imageView.image = UIImage(named: image)
        }
    }
}
}
