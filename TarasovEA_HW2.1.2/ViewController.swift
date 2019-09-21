//
//  ViewController.swift
//  TarasovEA_HW2.1.2
//
//  Created by Евгений Тарасов on 19/09/2019.
//  Copyright © 2019 Евгений Тарасов. All rights reserved.
//

import UIKit

enum CurrentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var changeTraficButton: UIButton!
    
    // свойство отвечает за текущий цвет
    private var currentLight = CurrentLight.red
    
    // два свойства для состояния
    //CG - core grafic
    //
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeTraficButton.layer.cornerRadius = 10
        
        // присваиваем светофору начальные значения - выключено
        redLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
    }
    
    // переопределяем одно из свойств UIViewController, оно нужно для того, чтобы радиусы были зависимыми от размеров экрана, т.е., это свойство срабатывает не перед самым отображением, когда система уже знает, какой экран у устройства
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    
    
    @IBAction func changeTraficLight() {
        changeTraficButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        }
    }
    
    
    
    //My home work
/*----------------------------------------
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
 ----------------------------------------*/
    
}

