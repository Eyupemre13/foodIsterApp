//
//  LoginPresenter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

class LoginPresenter : ViewToPresenterLoginProtocol
{
    var loginInteractor: PresenterToInteractorLoginProtocol?
    
    func loginUser(email: String, password: String) {
        loginInteractor?.login(email: email, password: password)
    }
    
}
