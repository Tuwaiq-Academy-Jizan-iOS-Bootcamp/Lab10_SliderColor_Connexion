//
//  ViewController.swift
//  lab9
//
//  Created by Dua'a ageel on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var redValue = 0.0
    var greenValue = 0.0
    var blueValue = 0.0
    
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var sliderColor: UISlider!
    
    @IBOutlet weak var sliderColorgreen: UISlider!
    
    @IBOutlet weak var sliderColorblue: UISlider!
    
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
    blueSwitch.isOn=true
        sliderColor.isEnabled = true
        sliderColorgreen.isEnabled = true
        sliderColorblue.isEnabled = true
        sliderColor.value = 0
        sliderColorgreen.value = 0
        sliderColorblue.value = 0
    }
    
    
    
    
    
    @IBAction func sladirNEW1(_ sender: UISlider) {
        updateColor()
    }
    
func updateColor()
    {
        if redSwitch.isOn{
            redValue = CGFloat(sliderColor.value)}
        else{
            redValue = 0.0
            sliderColor.value = 0
        }
        if greenSwitch.isOn{
            greenValue = CGFloat(sliderColorgreen.value)
        }
            else{
                greenValue = 0.0
                sliderColorgreen.value = 0
            }
            
            if blueSwitch.isOn{
                blueValue = CGFloat(sliderColorblue.value)
            }
            else
            {
                blueValue = 0.0
                sliderColorblue.value = 0
                
            }
       
            greenValue = CGFloat(sliderColorgreen.value)
        blueValue = CGFloat(sliderColorblue.value)
        viewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )
    }
    
    
    @IBAction func switcha(_ sender: UISwitch){
        updateColor()
   
    }
    
    @IBAction func switchb(_ sender: UISwitch) {
   updateColor()
    }
    
    @IBAction func switchc(_ sender: UISwitch) {
        updateColor()
    }
    
}

