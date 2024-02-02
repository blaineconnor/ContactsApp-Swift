//
//  KisiKayitVM.swift
//  KisilerUygulaması
//
//  Created by Fatih Emre Sarman on 1.02.2024.
//

import Foundation

class KisiKayitVM{
    var krepo = KisilerDaoRepo()
    func kaydet(kisi_ad:String, kisi_tel:String){
        krepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
