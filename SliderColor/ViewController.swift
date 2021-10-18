//
//  ViewController.swift
//  SliderColor
//
//  Created by Afaf Yahya on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setupafter loading the view.
    }
    
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    
    @IBAction func rest(_ sender: UIButton) {
    redSwitch.isOn = true
    greenSwitch.isOn = true
    blueSwitch.isOn = true
    redSlider.value = 0.0
    greenSlider.value = 0.0
    blueSlider.value = 0.0
        
            updateColor()
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        updateColor()
    }
    func updateColor () {
        do {
        if redSwitch.isOn {
                red = CGFloat(redSlider.value)                               }
            if greenSwitch.isOn{
                green = CGFloat(greenSlider.value)
            }
            if blueSwitch.isOn {
                blue = CGFloat(blueSlider.value)
            }
            let color = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
            viewColor.backgroundColor = color
        }
        func switchChange(_ sender: UISwitch) {
        updateColor()
    }
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        updateColor()
    }
   
        }

