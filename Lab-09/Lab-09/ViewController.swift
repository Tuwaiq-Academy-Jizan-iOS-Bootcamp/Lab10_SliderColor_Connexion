//
//  ViewController.swift
//  Lab-09
//
//  Created by Afrah Omar on 11/03/1443 AH.


import UIKit

class ViewController: UIViewController {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
  
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    
    

  
    @IBAction func silderChange(_ sender: UISlider)
    {
updateColor()
    }
    
   
    @IBAction func switchChanged(_ sender: UISwitch)
    {
        
        redSwitch.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        
        updateColor()
    }
    
    
        @IBAction func reset(_ sender: UIButton) {
        
        
        redSwitch.isOn = true
            greenSwitch.isOn = true
            blueSwitch.isOn = true
        
          
            redSlider.value = 0.0
            greenSlider.value = 0.0
            blueSlider.value = 0.0
            
            updateColor()
    
        
    }

     
        @IBAction func sliderAction(_ sender: Any) {
            updateColor()
        }
    
    func updateColor()
{

  if redSwitch.isOn {
           red = CGFloat(redSlider.value)
         }
         if greenSwitch.isOn{
           green = CGFloat(greenSlider.value)
         }
         if blueSwitch.isOn {
             blue = CGFloat(blueSlider.value)
         }
    let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
    colorView.backgroundColor = color
}
    
    
}

