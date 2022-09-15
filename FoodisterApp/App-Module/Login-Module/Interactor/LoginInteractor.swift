//
//  LoginInteractor.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation
import Firebase
import FirebaseAuth

class LoginInteractor : PresenterToInteractorLoginProtocol
{
    func login(email: String, password: String) {
        let auth = Auth.auth()
        
        auth.signIn(withEmail: email, password: password) { [weak self] authResult, error in
            
        }
    }
    
    
}

