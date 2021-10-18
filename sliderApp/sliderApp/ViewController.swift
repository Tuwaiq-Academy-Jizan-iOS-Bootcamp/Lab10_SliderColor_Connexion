//
//  ViewController.swift
//  sliderApp
//
//  Created by ماك بوك on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
//UICOLOR
    @IBOutlet weak var sliderView: UIView!
//Sliders
    @IBOutlet weak var sliderR: UISlider!
    @IBOutlet weak var sliderG: UISlider!
    @IBOutlet weak var sliderB: UISlider!
// switch//
    
    @IBOutlet weak var redR: UISwitch!
    @IBOutlet weak var greenG: UISwitch!
    @IBOutlet weak var blueB: UISwitch!
//RESET
    
    @IBOutlet weak var reset: UIButton!
// actoin//
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    @IBAction func colorM(_ sender: Any) {
    slidersAndSwitch()
    }
    @IBAction func switchAction(_ sender: Any) {
    slidersAndSwitch()
    }
    @IBAction func resetAction(_ sender: Any) {
        sliderR.value = 0
        sliderB.value = 0
        sliderG.value = 0
        sliderR.isEnabled = true
        sliderB.isEnabled = true
        sliderG.isEnabled = true
        redR.isOn = true
        greenG.isOn = true
        blueB.isOn = true
        sliderView.backgroundColor = UIColor(red: CGFloat(sliderR.value), green: CGFloat(sliderG.value), blue: CGFloat(sliderB.value), alpha: 1)
    }
    func slidersAndSwitch() {
        if redR.isOn {
            sliderR.isEnabled = true
        }else {
            sliderR.isEnabled = false
            sliderR.value = 0
        }
        if blueB.isOn {
            sliderB.isEnabled = true
        }else {
            sliderB.isEnabled = false
            sliderB.value = 0
        }
        if greenG.isOn{
            sliderG.isEnabled = true
        }else{
            sliderG.isEnabled = false
            sliderG.value = 0
        }
        let color = UIColor(red: CGFloat(sliderR.value), green: CGFloat(sliderG.value), blue: CGFloat(sliderB.value), alpha: 1)
        sliderView.backgroundColor = color
    }

    
}

