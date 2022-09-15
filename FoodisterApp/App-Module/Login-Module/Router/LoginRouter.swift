//
//  LoginRouter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

class LoginRouter : PresenterToRouter
{
    static func createModule(ref: LoginViewController) {
        ref.loginPresenterObject = LoginPresenter()
        ref.loginPresenterObject?.loginInteractor = LoginInteractor()
    }
    
}

