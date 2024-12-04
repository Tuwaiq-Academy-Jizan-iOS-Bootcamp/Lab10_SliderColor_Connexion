//
//  ViewController.swift
//  Lap9
//
//  Created by Ehab Hakami on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewChange: UIView!
    
    @IBOutlet weak var sliderA: UISlider!
    @IBOutlet weak var sliderB: UISlider!
    @IBOutlet weak var sliderC: UISlider!
    
    @IBOutlet weak var switchred: UISwitch!
    @IBOutlet weak var switchBulo: UISwitch!
    @IBOutlet weak var switchGeern: UISwitch!
    
    var red = (0.0)
    var blue = (0.0)
    var green = (0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        myFunc()
//        if switchred.isOn {
//            red = CGFloat(sliderA.value)
//        }
//        if switchBulo.isOn {
//            blue = CGFloat(sliderB.value)
//        }
//        if switchGeern.isOn {
//            green = CGFloat(sliderC.value)
//        }
//        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
//        viewChange.backgroundColor = color
        
    }
    
    @IBAction func actionBut(_ sender: Any) {
        reSetbut()
      
//        switchred.isOn = true
//        switchBulo.isOn = true
//        switchGeern.isOn = true
//
//        sliderA.isEnabled = true
//        sliderB.isEnabled = true
//        sliderC.isEnabled = true
//
//        sliderA.value = 0
//        sliderB.value = 0
//        sliderC.value = 0
    }
    
    
    func myFunc(){
        if switchred.isOn {
            red = CGFloat(sliderA.value)
        }
        if switchBulo.isOn {
            blue = CGFloat(sliderB.value)
        }
        if switchGeern.isOn {
            green = CGFloat(sliderC.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        viewChange.backgroundColor = color
            
            
            
            
    }
    
    func reSetbut(){
        switchred.isOn = false
        switchBulo.isOn = false
        switchGeern.isOn = false

        sliderA.isEnabled = true
        sliderB.isEnabled = true
        sliderC.isEnabled = true

        sliderA.value = 0
        sliderB.value = 0
        sliderC.value = 0
        
        viewChange.backgroundColor = UIColor(red: CGFloat(sliderA.value), green: CGFloat(sliderB.value), blue: CGFloat(sliderC.value), alpha: 1)
        

    }
    
    @IBAction func switchAction(_ sender: Any) {
        if switchred.isOn == false {
            sliderA.value = 0
            
        }
        if switchBulo.isOn == false {
            sliderB.value = 0
            
        }
        if switchGeern.isOn == false {
            sliderC.value = 0
            
        }


        else {

    }
        viewChange.backgroundColor = UIColor(red: CGFloat(sliderA.value), green: CGFloat(sliderB.value), blue: CGFloat(sliderC.value), alpha: 1)
}

}
