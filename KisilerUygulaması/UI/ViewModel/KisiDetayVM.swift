//
//  KisiDetayVM.swift
//  KisilerUygulaması
//
//  Created by Fatih Emre Sarman on 1.02.2024.
//

import Foundation

class KisiDetayVM{
    var krepo = KisilerDaoRepo()
    
    func guncelle(kisi_id:Int,kisi_ad:String, kisi_tel:String){
        krepo.guncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
