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
    var redValue = 0.0
     var greenValue = 0.0
     var  blueValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func Reast(_ sender: UIButton) {
       
        blueSwitch.isOn = true
        greenSwitch.isOn = true
        RedSwicth.isOn = true
        Slider1.isEnabled = true
        Slider2.isEnabled = true
        Slider3.isEnabled = true
        Slider1.value = 0
        Slider2.value = 0
        Slider3.value = 0
        ViewColor.backgroundColor = UIColor.black
        
    }
    
    func ubdateColor (){
        redValue = CGFloat(Slider1.value)
        greenValue = CGFloat(Slider2.value)
        blueValue = CGFloat(Slider3.value)
        if RedSwicth .isOn == false {
            redValue = 0
            Slider1.value = 0
        }
        if greenSwitch.isOn == false{
            greenValue = 0
            Slider2.value = 0
        }
        if blueSwitch.isOn == false{
            blueValue = 0
            Slider3.value = 0
        }
       let color = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        ViewColor.backgroundColor = color
    }
    
    @IBAction func Slider1Action(_ sender: UISlider) {
        ubdateColor()
    }

    @IBAction func Slider2Action(_ sender: UISlider) {
       ubdateColor()
    }

    
   
    
    @IBAction func Slider3Action(_ sender: UISlider) {
     ubdateColor()
    }
        
    @IBAction func redSwich(_ sender: UISwitch) {
        ubdateColor()
    }
  
    @IBAction func greenSwitch(_ sender: UISwitch) {
       ubdateColor()
        
    }
    
    @IBAction func blueSwitch(_ sender: UISwitch) {
       ubdateColor()
        
    }
    
}
    
    
    


