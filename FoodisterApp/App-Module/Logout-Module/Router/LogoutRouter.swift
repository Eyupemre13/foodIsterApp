//
//  LogoutRouter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

class ProfileRouter : PresenterToRouterProfileProtocol
{
    static func createModule(ref: LogoutViewController) {
        
        let presenter = ProfilePresenter()
        ref.profilePresenterObject = presenter
        ref.profilePresenterObject?.profileInteractor = ProfileInteractor()
        ref.profilePresenterObject?.profileView = ref
        ref.profilePresenterObject?.profileInteractor?.profilePresenter = presenter
    }
    
}

