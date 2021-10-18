//
//  ViewController.swift
//  Lab09
//
//  Created by Bushra Barakat on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!

    @IBOutlet weak var slide1: UISlider!
    
    @IBOutlet weak var slide2: UISlider!
    @IBOutlet weak var slide3: UISlider!
    
    @IBOutlet weak var reset: UIButton!
    
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //viewColor.backgroundColor = .black
        
    }

  
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func switchAction(_ sender: Any) {
        updateColor()
    }
    
    func updateColor() {
        red = CGFloat(slide1.value)
        green = CGFloat(slide2.value)
        blue = CGFloat(slide3.value)
        
        if switch1.isOn == false{
            red = 0
        }
        if switch2.isOn == false {
            green = 0
        }
        if switch3.isOn == false {
            blue = 0
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        viewColor.backgroundColor = color
    }
    
        
    
    @IBAction func resetButton(_ sender: UIButton) {
        switch1.isOn = true
        switch2.isOn = true
        switch3.isOn = true
        slide1.isEnabled=true
        slide2.isEnabled=true
        slide3.isEnabled=true
        
        slide1.value = 0
        slide2.value = 0
        slide3.value = 0
         
        updateColor()
        
    }
    
}
       
       
        
        
        
        
    
       
    
    
    
   
    
    

