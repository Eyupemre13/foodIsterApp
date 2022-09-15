//
//  WelcomeViewController.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    


    @IBAction func loginBtn(_ sender: Any) {
        performSegue(withIdentifier: "toLogin", sender: nil)
    }
    
    @IBAction func createBtn(_ sender: Any) {
        performSegue(withIdentifier: "toRegister", sender: nil)
    }
}
