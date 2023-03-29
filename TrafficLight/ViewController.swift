//
//  ViewController.swift
//  TrafficLight
//
//  Created by Mariya Andreeva on 02.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.1
        yellowLight.alpha = 0.1
        greenLight.alpha = 0.1
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
    }

    @IBAction func pressStartButton() {
            startButton.setTitle("NEXT", for: .normal)
        
        
        switch currentLight {
        case .red:
            greenLight.alpha = 0.1
            redLight.alpha = 1
            currentLight = .yellow
        case .yellow:
            redLight.alpha = 0.1
            yellowLight.alpha = 1
            currentLight = .green
        case .green:
            yellowLight.alpha = 0.1
            greenLight.alpha = 1
            currentLight = .red
        }
    }
}

extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
