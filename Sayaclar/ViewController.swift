//
//  ViewController.swift
//  Sayaclar
//
//  Created by Enis Uzun on 5.08.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zamanLabel: UILabel!
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kalanZaman = 15
        zamanLabel.text = "Zaman: \(kalanZaman)"
    }

    @IBAction func baslatButonu(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (timerFonksiyonu), userInfo: nil, repeats: true)
    }
    @objc func timerFonksiyonu(){
        zamanLabel.text = "Zaman: \(kalanZaman)"
        kalanZaman = kalanZaman - 1
        
        if kalanZaman == -2{
            zamanLabel.text = "Süre Bitti"
            timer.invalidate()
            kalanZaman = 15
        }
    }
}

