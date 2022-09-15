//
//  TableViewCell.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 14.09.2022.
//

import UIKit
import Kingfisher

protocol TableViewCellDelegate : AnyObject {
    func didTapMinesBtnFromUser(_ cell: TableViewCell)
    func didTapPlusBtnFromUser(_ cell: TableViewCell)
}

class TableViewCell: UITableViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var removeBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!

    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var plusBtn: UIButton!
   
  weak var delegate : TableViewCellDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        

        // Configure the view for the selected state
    }
    func configureButtons() {
        minusBtn.addTarget(self, action: #selector(didTapMinesBtn), for: .touchUpInside)
        plusBtn.addTarget(self, action: #selector(didTapPlusBtn), for: .touchUpInside)
    }
    
    @objc func didTapMinesBtn() {
        delegate?.didTapMinesBtnFromUser(self)
    }
    
    @objc func didTapPlusBtn(){
        delegate?.didTapPlusBtnFromUser(self)
    }


}
