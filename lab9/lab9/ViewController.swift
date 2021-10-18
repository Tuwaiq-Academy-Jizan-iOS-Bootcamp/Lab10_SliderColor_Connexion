//
//  ViewController.swift
//  lab9
//
//  Created by grand ahmad on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewInterface: UIView!
   
    @IBOutlet weak var redColor: UISwitch!
    @IBOutlet weak var greenColor: UISwitch!
    @IBOutlet weak var blueColor: UISwitch!
    
    @IBOutlet weak var teachColor: UISlider!
    @IBOutlet weak var teachCol: UISlider!
    @IBOutlet weak var teachColo: UISlider!
    
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    
    
    @IBAction func buttonInter(_ sender: Any) {
        let newColor = UIColor(red: 0, green: 0, blue:0, alpha: 1)
        viewInterface.backgroundColor = newColor
        
        redColor.isOn = true
        greenColor.isOn = true
        blueColor.isOn = true
    
        teachColor.value = 0
        teachCol.value = 0
        teachColo.value = 0
    }
    
    @IBAction func slaiderValue(_ sender: UISlider)
    {
        updateColor()
        
        let red = teachColor.value
        let green = teachCol.value
        let blue = teachColo.value
        
            let newColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
            viewInterface.backgroundColor = newColor

      print(sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateColor() {
        red = CGFloat(teachColor.value)
        green = CGFloat(teachCol.value)
        blue = CGFloat(teachColo.value)
        
        if redColor.isOn == false {
            red = 0
        }
        if greenColor.isOn == false {
            green = 0
        }
        if blueColor.isOn == false {
            blue = 0
    }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
viewInterface.backgroundColor = color
 }
    
    @IBAction func myActionSwitch(_ sender: Any) {
        updateColor()
    }
}

