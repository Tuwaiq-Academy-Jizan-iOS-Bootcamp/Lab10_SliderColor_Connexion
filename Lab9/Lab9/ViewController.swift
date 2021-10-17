//
//  ViewController.swift
//  lab9
//
//  Created by Dua'a ageel on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    @IBAction func sliderActiona(_ sender: UISlider) {
        
        let redValue = CGFloat(sliderColor.value)
        let greenValue = CGFloat(sliderColorgreen.value)
        let blueValue = CGFloat(sliderColorblue.value)
        viewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )
    }
    
    @IBAction func sliderActionb(_ sender: UISlider) {
        let redValue = CGFloat(sliderColor.value)
        let greenValue = CGFloat(sliderColorgreen.value)
        let blueValue = CGFloat(sliderColorblue.value)
        viewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )
        
    }
    
    @IBAction func sliderActionc(_ sender: UISlider) {
        let redValue = CGFloat(sliderColor.value)
        let greenValue = CGFloat(sliderColorgreen.value)
        let blueValue = CGFloat(sliderColorblue.value)
        viewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )
        
    }
    
    @IBAction func switcha(_ sender: UISwitch){
    sliderColor.isEnabled = false
    sliderColor.value = 0
    }
    
    @IBAction func switchb(_ sender: UISwitch) {
    sliderColor.isEnabled = false
    sliderColor.value = 0
    }
    
    @IBAction func switchc(_ sender: UISwitch) {
        sliderColor.isEnabled = false
        sliderColor.value = 0
    }
    
}

