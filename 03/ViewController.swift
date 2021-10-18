//
//  ViewController.swift
//  03
//
//  Created by Nasser Aseeri on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!

    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    var red:CGFloat = 0.0
    var green:CGFloat = 0.0
    var blue:CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        fancupditcolore()
    }
    @IBAction func redSwitchChanged(_ sender: Any) {
    }
    
    @IBAction func greenSwitchChanged(_ sender: Any) {
    }
    @IBAction func blueSwitchChanged(_ sender: Any) {
    }
    
    func fancupditcolore(){
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
            
            if greenSwitch.isOn{ green =
                CGFloat(greenSlider.value)
                
                if blueSwitch.isOn{
                    blue = CGFloat (blueSlider.value)
                }
            }
            
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor =    color
        
    }
    
    
}
