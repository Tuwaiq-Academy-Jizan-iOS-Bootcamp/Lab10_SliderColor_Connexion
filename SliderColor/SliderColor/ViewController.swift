//
//  ViewController.swift
//  SliderColor
//
//  Created by Jawaher Mohammad on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
//Outlet connectio
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redColor: UISlider!
    @IBOutlet weak var blueColor: UISlider!
    @IBOutlet weak var greenColor: UISlider!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var resetButton: UIButton!
    
    
    var red = 0.0
    var blue = 0.0
    var green = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    
    //all slider action connection
    @IBAction func redSlider(_ sender: UISlider) {
    updateColor()
   }
    //all switch action connection
    @IBAction func switchColor(_ sender: Any) {
        updateColor()
    }
    
    func updateColor(){
        red = CGFloat(redColor.value)
        green = CGFloat(greenColor.value)
        blue = CGFloat(blueColor.value)
              if redSwitch.isOn == false {
                  red = 0
              }
              if greenSwitch.isOn == false {
                  green = 0
              }
              if blueSwitch.isOn == false {
                  blue = 0
              }
              let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
              colorView.backgroundColor = color
    }
    //button action connection
    @IBAction func resetFun(_ sender: UIButton) {
        redColor.value = 0
        greenColor.value = 0
        blueColor.value = 0
        redSwitch.isOn = true
        greenSwitch.isOn = true
        blueSwitch.isOn = true
        redColor.isEnabled = true
        greenColor.isEnabled = true
        blueColor.isEnabled = true
        colorView.backgroundColor = UIColor.black
    }
    
}

