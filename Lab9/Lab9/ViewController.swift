//
//  ViewController.swift
//  Lab9
//
//  Created by Abdulrahman Gazwani on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewResalt: UIView!
    
    @IBOutlet weak var red: UISlider!
    @IBOutlet weak var green: UISlider!
    @IBOutlet weak var blue: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderRed(_ sender: Any) {
        let redValue = CGFloat(red.value)
        let greenValue = CGFloat(green.value)
        let blueValue = CGFloat(blue.value)
        viewResalt.backgroundColor = UIColor (red:redValue,green: greenValue,blue: blueValue,alpha: 1)
        
    }
    
    @IBAction func sliderGreen(_ sender: Any) {
        let redValue = CGFloat(red.value)
        let greenValue = CGFloat(green.value)
        let blueValue = CGFloat(blue.value)
        viewResalt.backgroundColor = UIColor (red:redValue,green: greenValue,blue: blueValue,alpha: 1)
    }
    @IBAction func sliderBlue(_ sender: Any) {
        let redValue = CGFloat(red.value)
        let greenValue = CGFloat(green.value)
        let blueValue = CGFloat(blue.value)
        viewResalt.backgroundColor = UIColor (red:redValue,green: greenValue,blue: blueValue,alpha: 1)
    }
    
    @IBAction func rest(_ sender: Any) {
        redSwitch.isOn = true
        greenSwitch .isOn = true
        blueSwitch .isOn = true
        red . isEnabled = true
        green . isEnabled = true
        blue . isEnabled = true
        red .value = 0
        green .value = 0
        blue . value = 0
       
    }
    @IBAction func redAction(_ sender: UISwitch) {
       red.isEnabled = false
        red . value = 0
        }
       
    @IBAction func greenAction(_ sender: UISwitch)
    {
        green.isEnabled = false
        green . value = 0
    }
    
    @IBAction func blueAction(_ sender:UISwitch ) {
        blue . isEnabled = false
        blue . value = 0
    }
}
    



    
    
    
    
    
    
    


