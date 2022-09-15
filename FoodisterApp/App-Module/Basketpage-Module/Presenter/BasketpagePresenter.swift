//
//  BasketpagePresenter.swift
//  FoodisterApp
//
//  Created by Eyüp Emre Aygün on 5.09.2022.
//

import Foundation

class SepetSayfaPresenter : ViewToPresenterSepetSayfaProtocol {
    
    var sepetSayfaView: PresenterToViewSepetSayfaProtocol?
    var sepetSayfaInteractor: PresenterToInteractorSepetSayfaProtocol?
    
    func yemekleriAl(kullanici_adi:String) {
        sepetSayfaInteractor?.sepettekiYemekleriAl(kullanici_adi:kullanici_adi)
    }
    func sil(sepet_yemek_id: String, kullanici_adi: String) {
        sepetSayfaInteractor?.yemekSil(sepet_yemek_id: sepet_yemek_id, kullanici_adi: kullanici_adi)
    }
}

extension SepetSayfaPresenter : InteractorToPresenterSepetSayfaProtocol {
    func presenteraVeriGonder(sepetYemeklerListe: Array<SepetYemekler>) {
        sepetSayfaView?.vieweVeriGonder(sepetYemeklerListe: sepetYemeklerListe)
    }
}
