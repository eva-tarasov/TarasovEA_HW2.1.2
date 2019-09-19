//
//  ViewController.swift
//  TarasovEA_HW2.1.2
//
//  Created by Евгений Тарасов on 19/09/2019.
//  Copyright © 2019 Евгений Тарасов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var changeTraficButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 50
        redLight.alpha = 0.3
        
        yellowLight.layer.cornerRadius = 50
        yellowLight.alpha = 0.3
        
        greenLight.layer.cornerRadius = 50
        greenLight.alpha = 0.3
        
    }
    
    var step = 0

    @IBAction func changeTraficLight() {
        changeTraficButton.setTitle("NEXT", for: .normal)
        
        mark: for _ in 0...3 {
            step += 1
            
            if step == 1 {
                redLight.alpha = 1
                
                yellowLight.alpha = 0.3
                greenLight.alpha = 0.3
                break mark
                
            } else if step == 2 {
                yellowLight.alpha = 1
                
                redLight.alpha = 0.3
                greenLight.alpha = 0.3
                break mark
                
            } else if step == 3 {
                greenLight.alpha = 1
                
                redLight.alpha = 0.3
                yellowLight.alpha = 0.3
            }
            
            if step == 3 {
                step = 0
                break mark
            }
            
        }
    }
    
}

