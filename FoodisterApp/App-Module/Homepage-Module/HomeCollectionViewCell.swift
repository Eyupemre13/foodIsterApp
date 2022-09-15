//
//  HomeCollectionViewCell.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 12.09.2022.
//

import UIKit
import Kingfisher
class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var HomeImageView: UIImageView!
    @IBOutlet weak var homeLbl: UILabel!
    @IBOutlet weak var homePriceLbl: UILabel!
    
    @IBOutlet weak var hucre: UIView!
    
    func resimGoster(resimAdi:String){
        
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAdi)"){
           
            
            DispatchQueue.main.async { //kingfisher kullanımı
                
                self.HomeImageView.kf.setImage(with: url)
                
            }
            
        }
        
    }

}
    

