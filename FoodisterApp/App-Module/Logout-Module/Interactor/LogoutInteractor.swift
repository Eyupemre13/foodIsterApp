//
//  LogoutInteractor.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation
import Firebase

class ProfileInteractor : PresenterToInteractorProfileProtocol
{
    var profilePresenter: InteractorToPresenterProfileProtocol?
    
    func showInfo() {
        let auth = Auth.auth()
        
        let email = (auth.currentUser?.email)!
      
        profilePresenter?.sendDataToPresenter(email: email)
    }
    
}
