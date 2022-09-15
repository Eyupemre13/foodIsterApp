//
//  RegisterProtocols.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

protocol ViewToPresenterRegisterProtocol
{
    var registerInteractor : PresenterToInteractorRegisterProtocol? {get set}
    
    func registerUser(email : String, password : String)
}

protocol PresenterToInteractorRegisterProtocol
{
    func register(email : String, password : String)
}

protocol PresenterToRouterRegisterProtocol
{
    static func createModule(ref: RegisterViewController)
}
