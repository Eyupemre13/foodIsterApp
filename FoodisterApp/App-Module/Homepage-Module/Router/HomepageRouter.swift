//
//  HomepageRouter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation
class AnasayfaRouter : PresenterToRouterAnasayfaProtocol {
    static func createModule(ref: HomePageViewController) {
        
        let presenter : ViewToPresenterAnasayfaProtocol & InteractorToPresenterAnasayfaProtocol = AnasayfaPresenter()
        
        //View controller için
        ref.anasayfaPresenterNesnesi = presenter
        
        //Presenter için
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenterNesnesi?.anasayfaView = ref
        
        //Interactor için
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
        
    }
}
