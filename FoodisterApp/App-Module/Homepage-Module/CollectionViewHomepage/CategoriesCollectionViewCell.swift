//
//  CategoriesCollectionViewCell.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 9.09.2022.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoriesCellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        categoriesCellView.layer.borderWidth = 1
        categoriesCellView.layer.borderColor = UIColor.orange.cgColor
        categoriesCellView.layer.cornerRadius = 10
    }

}
