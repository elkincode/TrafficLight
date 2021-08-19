//
//  ViewController.swift
//  TrafficLight
//
//  Created by Иван Элькин on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    private var color: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
        greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        redLightView.layer.cornerRadius = redLightView.layer.bounds.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.layer.bounds.width / 2
        greenLightView.layer.cornerRadius = greenLightView.layer.bounds.width / 2
        nextButton.layer.cornerRadius = 10
    }

    @IBAction func nextButtonPressed() {
        
        color += 1
        
        nextButton.setTitle("NEXT", for: .normal)
        
        if color == 1 {
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(1)
            greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        } else if color == 2 {
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.3)
            yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(1)
        } else if color == 3 {
            yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            greenLightView.backgroundColor = UIColor.green.withAlphaComponent(1)
            color = 0
        }
    }
    
}

