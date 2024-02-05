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
        veritabaniKopyala()
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
    
    func veritabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "rehber", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: kopyalanacakYer.path){print("Veritabanı zaten var.")
        }else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }catch{}
        }
    }
}
