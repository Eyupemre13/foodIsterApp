//
//  DetailPageViewController.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import UIKit
import Kingfisher
import Firebase


class DetailPageViewController: UIViewController {
    @IBOutlet weak var DetailIamge: UIImageView!
    @IBOutlet weak var DetailLbl: UILabel!
    @IBOutlet weak var DetailPriceLbl: UILabel!
    @IBOutlet weak var DetailNumber: UILabel!
    @IBOutlet weak var DetailPlusButton: UIButton!
    @IBOutlet weak var DetailMinusButton: UIButton!
    
    let userDefault = UserDefaults.standard
    var yemek:TumYemekler?
    var detaySayfaPresenterNesnesi:ViewToPresenterDetaySayfaProtocol?
    
    var adet = 1
    var toplam = 0
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            if let y = yemek {
                DetailIamge.image = UIImage(named: y.yemek_resim_adi!)
                DetailLbl.text = "\(y.yemek_adi!)"
                if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(y.yemek_resim_adi!)") {
                    DispatchQueue.main.async {
                        self.DetailIamge.kf.setImage(with: url)
                    }

        // Do any additional setup after loading the view.
}
                DetailPriceLbl.text = "\(y.yemek_fiyat!) TL"

}
            DetailspageRouter.createModule(ref: self)
            self.tabBarController?.tabBar.isHidden = true
}
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    @IBAction func addToBtn(_ sender: Any) {
        if let k = DetailNumber.text,let y = yemek{
            detaySayfaPresenterNesnesi?.adet(yemek_adi: y.yemek_adi!, yemek_resim_adi: y.yemek_resim_adi!, yemek_fiyat: y.yemek_fiyat!, yemek_siparis_adet: k, kullanici_adi: "\(Auth.auth().currentUser?.email ?? "")")
            
        }
        if let y = yemek {
            print("\(y.yemek_adi!) - \(DetailNumber.text!) adet \(DetailPriceLbl.text!) fiyatla sepete eklendi.")
        }
        
        // home ekranına geri dönüldü
        navigationController?.popViewController(animated: true)
        
    }
    @IBAction func detailPlusClick(_ sender: Any) {
        adet += 1
        
        if let b = yemek?.yemek_fiyat! {
            if let a = Int(b){
                toplam = a * adet
                DetailPriceLbl.text = "\(toplam) TL"
            }
            
        }
        
        DetailNumber.text = String(adet)
        
    }
    @IBAction func detailMinusClick(_ sender: Any) {
        if adet > 1 {
            adet -= 1
        }
        if let b = yemek?.yemek_fiyat! {
            if let a = Int(b){
                DetailPriceLbl.text = "\(a * adet) TL"
            }
        }
        DetailNumber.text = String(adet)
    }

    }
    
 
    
    
