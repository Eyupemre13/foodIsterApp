//
//  LogoutProtocols.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

protocol ViewToPresenterProfileProtocol
{
    var profileInteractor : PresenterToInteractorProfileProtocol? {get set}
    var profileView : PresenterToViewProfileProtocol? {get set}
    
    func showInfoAll()
}

protocol PresenterToInteractorProfileProtocol
{
    var profilePresenter : InteractorToPresenterProfileProtocol? {get set}
    
    func showInfo()
}

protocol InteractorToPresenterProfileProtocol
{
    func sendDataToPresenter(email : String)
}

protocol PresenterToViewProfileProtocol
{
    func sendDataToView(email : String)
}

protocol PresenterToRouterProfileProtocol
{
    static func createModule(ref: LogoutViewController)
}
