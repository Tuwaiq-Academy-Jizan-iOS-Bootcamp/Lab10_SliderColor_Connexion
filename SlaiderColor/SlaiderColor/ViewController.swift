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
        Slider1.value = 0.0
        Slider2.value = 0.0
        Slider3.value = 0.0
        ViewColor.backgroundColor = UIColor.black
        
    }
    
    @IBAction func Slider1Action(_ sender: UISlider) {
       
        if RedSwicth.isOn{
           redValue = CGFloat(Slider1.value)
        }
        if greenSwitch.isOn {
            greenValue = CGFloat(Slider2.value)
        }
        if blueSwitch.isOn {
             blueValue = CGFloat(Slider3.value)
            
        }
        
        ViewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )
    }

    @IBAction func Slider2Action(_ sender: UISlider) {
       
         if RedSwicth.isOn{
            redValue = CGFloat(Slider1.value)
         }
         if greenSwitch.isOn {
             greenValue = CGFloat(Slider2.value)
         }
         if blueSwitch.isOn {
              blueValue = CGFloat(Slider3.value)
             
         }
         
         ViewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )
     }

    
   
    
    @IBAction func Slider3Action(_ sender: UISlider) {
       
         if RedSwicth.isOn{
            redValue = CGFloat(Slider1.value)
         }
         if greenSwitch.isOn {
             greenValue = CGFloat(Slider2.value)
         }
         if blueSwitch.isOn {
              blueValue = CGFloat(Slider3.value)
             
         }
         
         ViewColor.backgroundColor = UIColor(red: redValue, green: greenValue ,blue: blueValue, alpha: 1 )
     }

        
    @IBAction func redSwich(_ sender: UISwitch) {
        if RedSwicth.isOn{
        Slider1.isEnabled = true
        Slider1.value = 0
        ViewColor.backgroundColor = UIColor .black
        }
        else{
            Slider1.value = 0
            Slider1.isEnabled = false
        }
        
    }
  
    @IBAction func greenSwitch(_ sender: UISwitch) {
        if greenSwitch.isOn{
        Slider2.isEnabled = true
        Slider2.value = 0
        ViewColor.backgroundColor = UIColor.black
        }else{
            Slider2.value = 0
            Slider2.isEnabled = false
        }}
    
    @IBAction func blueSwitch(_ sender: UISwitch) {
        if blueSwitch.isOn {
        Slider3.isEnabled = true
        Slider3.value = 0
        ViewColor.backgroundColor = UIColor .black
        
        }else {
            Slider3.value = 0
            Slider3.isEnabled = false
        } }
    
}
    
    
    


