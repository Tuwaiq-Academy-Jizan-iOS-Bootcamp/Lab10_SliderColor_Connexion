//
//  ViewController.swift
//  Lab101
//
//  Created by Ahlam Ahlam on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    
    
    @IBOutlet weak var SliderA: UISlider!
    
    
    @IBOutlet weak var SliderB: UISlider!
    
    
    @IBOutlet weak var SliderC: UISlider!
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    
    @IBOutlet weak var blueSwitch: UISwitch!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Reast(_ sender: UIButton) {
        
        redSwitch.isOn=true
        greenSwitch.isOn=true
        greenSwitch.isOn=true
        SliderA.isEnabled=true
        SliderB.isEnabled=true
        SliderC.isEnabled=true
        SliderA.value=0
        SliderB.value=0
        SliderC.value=0
    }
    
    @IBAction func Slider1Action(_ sender: UISlider) {
        let redValue = CGFloat(SliderA.value)
        let greenValue = CGFloat(SliderB.value)
        let blueValue = CGFloat(SliderC.value)
        viewColor.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
    
    @IBAction func Slider2Action(_ sender: UISlider) {
        let redValue = CGFloat(SliderA.value)
        let greenValue = CGFloat(SliderB.value)
        let blueValue = CGFloat(SliderC.value)
        viewColor.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        
    }
    
    @IBAction func Slider3Action(_ sender: UISlider) {
        let redValue = CGFloat(SliderA.value)
        let greenValue = CGFloat(SliderB.value)
        let blueValue = CGFloat(SliderC.value)
        viewColor.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
    
    @IBAction func redSwich(_ sender: UISwitch) {
        
        SliderA.isEnabled = false
                SliderA.value = 0
    }
    @IBAction func greenSwitch(_ sender: UISwitch) {
        SliderB.isEnabled = false
                SliderB.value = 0
    }
    
    @IBAction func blueSwitch(_ sender: UISwitch) {
        
        SliderC.isEnabled = false
                SliderC.value = 0
        
    }
}

