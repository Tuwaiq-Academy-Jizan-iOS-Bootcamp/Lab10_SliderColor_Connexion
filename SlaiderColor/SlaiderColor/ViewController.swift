//
//  ViewController.swift
//  SlaiderColor
//
//  Created by Arwa Alattas on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewColor: UIView!
    @IBOutlet weak var Slider3: UISlider!
    @IBOutlet weak var Slider2: UISlider!
    @IBOutlet weak var Slider1: UISlider!
    
    @IBOutlet weak var RedSwicth: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Reast(_ sender: UIButton) {
        
        RedSwicth.isOn = true
        greenSwitch.isOn = true
        blueSwitch.isOn = true
        Slider1.isEnabled = true
        Slider2.isEnabled = true
        Slider3.isEnabled = true
        Slider1.value = 0
        Slider2.value = 0
        Slider3.value = 0
        
    }
    
    @IBAction func Slider1Action(_ sender: UISlider) {
        let redValue = CGFloat(Slider1.value)
        let greenValue = CGFloat(Slider2.value)
        let blueValue = CGFloat(Slider3.value)
        
        ViewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )
    }

    @IBAction func Slider2Action(_ sender: UISlider) {
        let redValue = CGFloat(Slider1.value)
        let greenValue = CGFloat(Slider2.value)
        let blueValue = CGFloat(Slider3.value)
        
        ViewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )

    }
    
   
    
    @IBAction func Slider3Action(_ sender: UISlider) {
        let redValue = CGFloat(Slider1.value)
        let greenValue = CGFloat(Slider2.value)
        let blueValue = CGFloat(Slider3.value)
        
        ViewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )

        
        
    }
        
        
    @IBAction func redSwich(_ sender: UISwitch) {
        
        Slider1.isEnabled = false
        Slider1.value = 0
    }
  
    @IBAction func greenSwitch(_ sender: UISwitch) {
        Slider2.isEnabled = false
        Slider2.value = 0
    }
    
    @IBAction func blueSwitch(_ sender: UISwitch) {
        Slider3.isEnabled = false
        Slider3.value = 0
        
    }
    
}
    
    
    


