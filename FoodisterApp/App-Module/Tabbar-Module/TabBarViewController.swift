//
//  TabBarViewController.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func SimpleAnnimationWhenSelectItem(_ item: UITabBarItem){
        guard let barItemView = item.value(forKey: "view") as? UIView else { return }

        let timeInterval: TimeInterval = 0.4
        
        let propertyAnimator = UIViewPropertyAnimator(duration: timeInterval, dampingRatio: 0.5) {
        barItemView.transform = CGAffineTransform.identity.scaledBy(x: 1.5, y: 1.5)
            
        }
        propertyAnimator.addAnimations({ barItemView.transform = .identity }, delayFactor: CGFloat(timeInterval))
        propertyAnimator.startAnimation()
    }
    


}
    



