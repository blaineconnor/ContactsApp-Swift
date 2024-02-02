//
//  KisiKayit.swift
//  KisilerUygulaması
//
//  Created by Fatih Emre Sarman on 30.01.2024.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiTel: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    
    var vm = KisiKayitVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text {
            vm.kaydet(kisi_ad: ka, kisi_tel: kt)
        }
    }    
}
