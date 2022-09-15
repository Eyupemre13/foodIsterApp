//
//  LoginViewController.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    var loginPresenterObject : ViewToPresenterLoginProtocol?
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        

        
    }
    

    @IBAction func loginClicked(_ sender: Any) {
        if emailTF.text != "" && passwordTF.text != "" {
            let auth = Auth.auth()
            auth.signIn(withEmail: emailTF.text!, password: passwordTF.text!) { (authdata, error) in
                if error != nil {
                    let alert = UIAlertController(title: "Error", message: error?.localizedDescription ?? "Error", preferredStyle: .alert)
                    let OKAction = UIAlertAction(title: "Ok", style: .default)
                    alert.addAction(OKAction)
                    self.present(alert, animated: true)

                } else {
                    //self.navigationController?.popToRootViewController(animated: true)
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarControllerId") as! UITabBarController
                    vc.modalPresentationStyle = .fullScreen
                    self.present(vc, animated: true, completion: nil)
                }

            }
        } else {
            let alert = UIAlertController(title: "Error", message:"username/password ?", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(OKAction)
            self.present(alert, animated: true)
        }
    }
    
    
    
}
