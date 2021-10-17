//
//  ViewController.swift
//  BelalSlideAndActions
//
//  Created by Belal Dohal on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
//COLOR VIEW
    @IBOutlet weak var colorView: UIView!
    //SLIDERS
    @IBOutlet weak var resSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
//SWITCHES
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
//RESET
    @IBOutlet weak var resetButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderAction(_ sender: Any) {
        slidersValue()
    }
    @IBAction func switchAction(_ sender: UISwitch) {
        slidersValue()
    }
    @IBAction func reset(_ sender: UIButton) {
            resSlider.value = 0
            greenSlider.value = 0
            blueSlider.value = 0
            redSwitch.isOn = true
            greenSwitch.isOn = true
            blueSwitch.isOn = true
            resSlider.isEnabled = true
            greenSlider.isEnabled = true
            blueSlider.isEnabled = true
    colorView.backgroundColor = UIColor(red: CGFloat(resSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        }
    func slidersValue() {
        if redSwitch.isOn {
            resSlider.isEnabled = true
        }else {
            resSlider.isEnabled = false
            resSlider.value = 0
        }
        if greenSwitch.isOn {
            greenSlider.isEnabled = true
        }else {
            greenSlider.isEnabled = false
            greenSlider.value = 0
        }
        if blueSwitch.isOn {
            blueSlider.isEnabled = true
        }else {
            blueSlider.isEnabled = false
            blueSlider.value = 0
        }
        let color = UIColor(red: CGFloat(resSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        colorView.backgroundColor = color
    }
}//The END

