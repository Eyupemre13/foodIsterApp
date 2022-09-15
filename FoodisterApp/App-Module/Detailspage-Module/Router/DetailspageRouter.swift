//
//  DetailspageRouter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

class DetailspageRouter : PresenterToRouterDetaySayfaProtocol {
    static func createModule(ref: DetailPageViewController) {
        ref.detaySayfaPresenterNesnesi = DetaySayfaPresenter()
        ref.detaySayfaPresenterNesnesi?.detaySayfaInteractor = DetailspageInteractor()
    }
}
