//
//  ViewController.swift
//  slider
//
//  Created by Ahmad Barqi on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    //COLOR VIEW
        @IBOutlet weak var colorview: UIView!
    //SLIDERS
        @IBOutlet weak var redslider: UISlider!
        @IBOutlet weak var greenslider: UISlider!
        @IBOutlet weak var blueslider: UISlider!
    //SWITCHES
        @IBOutlet weak var redswitch: UISwitch!
        @IBOutlet weak var greenswitch: UISwitch!
        @IBOutlet weak var blueswitch: UISwitch!
    //RESET
        @IBOutlet weak var resetButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func slideraction(_ sender: Any) {
        slidersValue()
    }
    @IBAction func switchaction(_ sender: Any) {
        slidersValue()
    }
    @IBAction func reset(_ sender: UIButton) {
        redslider.value = 0
        greenslider.value = 0
        blueslider . value = 0
        redswitch . isOn = true
        greenswitch . isOn = true
        blueswitch . isOn = true
        redslider .isEnabled = true
        greenslider .isEnabled = true
        blueslider .isEnabled = true
        colorview.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: 1 )
            }
        func slidersValue() {
            if redswitch.isOn {
                redslider.isEnabled = true
            }else {
                redslider.isEnabled = false
                redslider.value = 0
            }
            if greenswitch.isOn {
                greenslider.isEnabled = true
            }else {
                greenslider.isEnabled = false
                greenslider.value = 0
            }
            if blueswitch.isOn {
                blueslider.isEnabled = true
            }else {
                blueslider.isEnabled = false
                blueslider.value = 0
            }
            let color = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: 1)
            colorview.backgroundColor = color
        }
 
        
        
        
        
        
    
    
}



