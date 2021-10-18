//
//  ViewController.swift
//  mixColor
//
//  Created by dahma alwani on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwiitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        updateColor()
    }
    func updateColor () {
            
            if redSwiitch.isOn {
                red = CGFloat(redSlider.value)
            }
            if greenSwitch.isOn {
                green = CGFloat(greenSlider.value)
            }
            if blueSwitch.isOn {
                blue = CGFloat(blueSlider.value)
            }
            let color = UIColor (red: red, green: green, blue: blue, alpha: 1)
            colorView.backgroundColor = color
        
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        updateColor()
    }
    @IBAction func switchChange(_ sender: UISwitch) {
        
            redSlider.isEnabled = redSwiitch.isOn
            greenSlider.isEnabled = greenSwitch.isOn
            blueSlider.isEnabled = blueSwitch.isOn
           
        
        updateColor()
        
    }
    @IBAction func reset(_ sender: UIButton) {
        redSwiitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        updateColor()
       
        }
    }


