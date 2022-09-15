//
//  BasketpageRouter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

class SepetSayfaRouter : PresenterToRouterSepetSayfaProtocol {
    static func createModule(ref: BasketPageViewController) {

        let presenter : ViewToPresenterSepetSayfaProtocol & InteractorToPresenterSepetSayfaProtocol = SepetSayfaPresenter()

        ref.sepetSayfaPresenterNesnesi = presenter

        ref.sepetSayfaPresenterNesnesi?.sepetSayfaInteractor = SepetSayfaInteractor()
        ref.sepetSayfaPresenterNesnesi?.sepetSayfaView = ref

        ref.sepetSayfaPresenterNesnesi?.sepetSayfaInteractor?.sepetSayfaPresenter = presenter

    }
}
