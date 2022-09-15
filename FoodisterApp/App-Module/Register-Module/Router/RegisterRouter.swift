//
//  RegisterRouter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

class RegisterRouter : PresenterToRouterRegisterProtocol
{
    static func createModule(ref: RegisterViewController) {
        ref.registerPresneterObject = RegisterPresenter()
        ref.registerPresneterObject?.registerInteractor = RegisterInteractor()
    }
}
