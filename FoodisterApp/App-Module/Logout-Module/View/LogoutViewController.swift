//
//  LogoutViewController.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import UIKit
import Firebase
import Alamofire

class LogoutViewController: UIViewController {
    @IBOutlet weak var emailTf: UILabel!
    var profilePresenterObject : ViewToPresenterProfileProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        ProfileRouter.createModule(ref: self)
       
    }
    override func viewWillAppear(_ animated: Bool) {
        profilePresenterObject?.showInfoAll()
    }

    

    @IBAction func logoutBtn(_ sender: Any) {
        
        do {
            try Auth.auth().signOut() }
        catch { print("already logged out") }
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "toLogin") as! LoginViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
        
        
        
        
    }
    

}
extension LogoutViewController : PresenterToViewProfileProtocol
{
    func sendDataToView(email: String) {
        
        self.emailTf.text = email
    }
    
}

