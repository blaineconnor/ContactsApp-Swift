//
//  AnasayfaVM.swift
//  KisilerUygulaması
//
//  Created by Fatih Emre Sarman on 1.02.2024.
//

import Foundation
import RxSwift

class AnasayfaVM{
    
    var krepo = KisilerDaoRepo()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    init(){
        kisilerListesi = krepo.kisilerListesi
        kisileriYukle()
    }
    
    func sil(kisi_id:Int){
        krepo.sil(kisi_id: kisi_id)
    }
    
    func ara (aramaKelimesi:String){
        krepo.ara(aramaKelimesi : aramaKelimesi)
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
}
