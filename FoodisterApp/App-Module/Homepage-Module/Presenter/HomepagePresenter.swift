//
//  HomepagePresenter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func yemekleriYukle() {
        anasayfaInteractor?.tumYemekleriAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.yemekAra(aramaKelimesi: aramaKelimesi)
    }
    
    
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yemekListesi: Array<TumYemekler>) {
        anasayfaView?.vieweVeriGonder(yemekListesi: yemekListesi)
    }
}

