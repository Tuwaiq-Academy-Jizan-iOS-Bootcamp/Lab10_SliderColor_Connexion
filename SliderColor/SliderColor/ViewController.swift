//
//  ViewController.swift
//  SliderColor
//
//  Created by Yasir Hakami on 17/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var forView: UIView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueeSwitch: UISwitch!
    
    
        var red = 0.0
        var green = 0.0
        var blue = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
           
        
    }
    
    @IBAction func sliderRed(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func button(_ sender: Any) {
        let newColor = UIColor(red :0, green :0, blue :0, alpha: 1)
        forView.backgroundColor = newColor
    }
    
    
    func updateColor(){
        if redSwitch.isOn {
        red = CGFloat(sliderRed.value)
    }
        if greenSwitch.isOn {
        green = CGFloat(sliderGreen.value)
    }
        if blueeSwitch.isOn {
        blue = CGFloat(sliderBlue.value)
   }
        let color = UIColor(red :red, green :green, blue :blue, alpha: 1)
        forView.backgroundColor = color
}
}
