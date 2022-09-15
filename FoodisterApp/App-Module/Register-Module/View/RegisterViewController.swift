//
//  RegisterViewController.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    var registerPresneterObject : ViewToPresenterRegisterProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        RegisterRouter.createModule(ref: self)
    }
    

    @IBAction func registerBtn(_ sender: Any) {
        if let te = emailTF.text, let tp = passwordTF.text{
            registerPresneterObject?.registerUser(email: te, password: tp)
        }
        
        let alert = UIAlertController(title: "Register", message: "Register is successful.", preferredStyle: .alert)
        
        let okayAction = UIAlertAction(title: "Okay", style: .default)
        {
            action in
            self.navigationController?.popToRootViewController(animated: true)
            
        }
        
        alert.addAction(okayAction)
        self.present(alert, animated: true)
       
    }
    

}
