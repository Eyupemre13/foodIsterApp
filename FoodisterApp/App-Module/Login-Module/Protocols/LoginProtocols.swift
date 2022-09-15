//
//  LoginProtocols.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

protocol ViewToPresenterLoginProtocol
{
    var loginInteractor : PresenterToInteractorLoginProtocol? {get set}
    func loginUser(email : String, password : String )
}

protocol PresenterToInteractorLoginProtocol
{
    func login(email : String, password : String )
}

protocol PresenterToRouter
{
    static func createModule(ref:LoginViewController)
}
