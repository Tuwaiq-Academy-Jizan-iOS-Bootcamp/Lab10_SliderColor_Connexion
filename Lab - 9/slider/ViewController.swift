//
//  ViewController.swift
//  slider
//
//  Created by Afrah Omar on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var red:CGFloat = 0
    var green:CGFloat = 0
    var blue:CGFloat = 0
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSilder: UISlider!
    @IBOutlet weak var greenSilder: UISlider!
    @IBOutlet weak var blueSilder: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColorView()
    
    }
    @IBAction func silderViewChange(_ sender: UISlider) {
        red = CGFloat(redSilder.value)
        green = CGFloat(greenSilder.value)
        blue = CGFloat(blueSilder.value)
        updateColorView()
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        red = 0
        green = 0
        blue = 0
        redSilder.value = 0
        greenSilder.value = 0
       blueSilder.value = 0
        
        updateColorView()
    }
    
    @IBAction func redSwitch(_ sender: UISwitch) {
        red = 0
        redSilder.value = 0
        updateColorView()
    }
    
    @IBAction func greenSwitch(_ sender: UISwitch) {
        green = 0
        greenSilder.value = 0
        updateColorView()
    }
    
    @IBAction func blueSwitch(_ sender: UISwitch) {
       blue = 0
        blueSilder.value = 0
        updateColorView()

    }

    
    private func updateColorView() {
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
}

}
