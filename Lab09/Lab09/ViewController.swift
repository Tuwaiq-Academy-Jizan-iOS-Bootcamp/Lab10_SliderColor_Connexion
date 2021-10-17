//
//  ViewController.swift
//  Lab09
//
//  Created by Hanan Somily on 17/10/2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redChange: UISlider!
    @IBOutlet weak var geenChange: UISlider!
    @IBOutlet weak var blueChange: UISlider!
    
    @IBOutlet weak var redC: UISwitch!
    @IBOutlet weak var greenC: UISwitch!
    @IBOutlet weak var blueC: UISwitch!
    
    
    @IBAction func chnged(_ sender: Any) {
        changeColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    func changeColor() {
        if redC.isOn{
            red = CGFloat(redChange.value)
        }
        if greenC.isOn {
           green = CGFloat(geenChange.value)
    }
       
        if blueC.isOn {
            blue = CGFloat(blueChange.value)
        }
    let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
        
    @IBAction func reStart(_ sender: Any) {
        colorView.backgroundColor =
        
    UIColor(red:0.0, green:0.0, blue:0.0, alpha: 1)
        redChange.value = 0
        geenChange.value = 0
        blueChange.value = 0
        //.black
    }
    

}

