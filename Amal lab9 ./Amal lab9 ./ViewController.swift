//
//  ViewController.swift
//  Amal lab9 .
//
//  Created by Amal Jeli on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var switchRed: UISwitch!
    @IBOutlet weak var switchGreen: UISwitch!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var switchBlue: UISwitch!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var SliderBlue: UISlider!
    
    
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    
    @IBAction func ColorSlider(_ sender: Any) {
        changeColor()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func changeColor() {
        
        if switchRed .isOn {
            red = CGFloat(sliderRed.value)
        }
        else {
            
            red = 0.0
        }
            if switchGreen.isOn {
                green = CGFloat(sliderGreen.value)
            }
        else {
            
            green = 0.0 }
            
        if switchBlue.isOn {
            blue = CGFloat(SliderBlue.value)
            
        }
            
            else {
                
                blue = 0.0
            }
            let color = UIColor( red: red , green: green , blue: blue , alpha: 1)
            colorView.backgroundColor = color }
        
        
        
    @IBAction func redS(_ sender: Any) {
        changeColor()
        sliderRed.value = 0
    }
    
    @IBAction func greenS(_ sender: Any) {
        changeColor()
        sliderGreen.value = 0
    }
    @IBAction func blueS(_ sender: Any) {
        changeColor()
        SliderBlue.value = 0
    }
    
    @IBAction func reset(_ sender: Any) {
        colorView.backgroundColor =
        UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
        sliderRed.value = 0
        sliderGreen.value = 0
        SliderBlue.value = 0
        switchRed.isOn = true
        switchGreen.isOn = true
        switchBlue.isOn = true
        
        
    }
    
    
    
}






