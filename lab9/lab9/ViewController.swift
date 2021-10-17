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
        if redColor.isOn {
            red = CGFloat(teachColor.value)
        }
        if greenColor.isOn {
            green = CGFloat(teachCol.value)
        }
        if blueColor.isOn {
            green = CGFloat(teachColo.value)
    }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
viewInterface.backgroundColor = color
 }
    
}

