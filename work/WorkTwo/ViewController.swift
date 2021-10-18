//
//  ViewController.swift
//  WorkTwo
//
//  Created by NoON .. on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading theview.
        
    }
    @IBAction func sliderAcation(_ sender: Any) {
        updateColor()
    }
    @IBAction func switchColor(_ sender: Any) {
        updateColor()
    }
    
    func updateColor(){
                red = CGFloat(redSlider.value)
                green = CGFloat(greenSlider.value)
                blue = CGFloat(blueSlider.value)
        if redSwitch.isOn == false{
            red = 0
            }
        if greenSwitch.isOn == false{
                green = 0
            }
        if blueSwitch.isOn == false{
                blue = 0
            }
            let color = UIColor(red: red, green: green,
                                blue: blue,alpha:1)
            colorView.backgroundColor = color
        }
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = true
                greenSwitch.isOn = true
                blueSwitch.isOn = true
                redSlider.isEnabled = true
                greenSlider.isEnabled = true
                blueSlider.isEnabled = true
                 redSlider.value = 0
                greenSlider.value = 0
                blueSlider.value = 0
    }
 

}
