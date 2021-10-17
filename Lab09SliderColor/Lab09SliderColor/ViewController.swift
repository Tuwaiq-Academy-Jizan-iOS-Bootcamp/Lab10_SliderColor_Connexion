//
//  ViewController.swift
//  Lab09SliderColor
//
//  Created by meme f on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchBlue: UISwitch!
    @IBOutlet weak var switchgreen: UISwitch!
    @IBOutlet weak var switchRed: UISwitch!
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redS: UISlider!
    
    @IBOutlet weak var greenS: UISlider!
    
    @IBOutlet weak var reset: UIButton!
    
    @IBOutlet weak var blueS: UISlider!
    var colorRed=0.0
    var colorGreen=0.0
    var colorBlue=0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mixColor(_ sender: UISlider) {
        updateColor()
        colorRed = CGFloat(redS.value)
        colorGreen = CGFloat(greenS.value)
        colorBlue = CGFloat(blueS.value)
        
      
       

    }
    func updateColor(){
        if switchRed.isOn{
        colorRed = CGFloat(redS.value)
        }else{
            colorRed=0.0
              redS.value = 0
            
       }
        if switchgreen.isOn{
            colorGreen = CGFloat(greenS.value)
            
        }else{
            colorGreen=0.0
             greenS.value = 0
           
        }
        if switchBlue.isOn{
            colorBlue = CGFloat(blueS.value)
            
        }
       else{colorBlue=0.0
           blueS.value = 0
       }
        
        viewColor.backgroundColor = UIColor(red: colorRed, green: colorGreen, blue: colorBlue, alpha: 1.0)
        
    }
    
    @IBAction func resetFunc(_ sender: Any) {
       
            viewColor.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        redS.value = 0
        greenS.value = 0
        blueS.value = 0
        switchRed.isOn = true
        switchgreen.isOn = true
        switchBlue.isOn = true
        }
  
    @IBAction func sRedFunc(_ sender: Any) {
        updateColor()
    }
    @IBAction func sGreenFunc(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func sBlueFunc(_ sender: Any) {
        updateColor()
    }
    
    
}

