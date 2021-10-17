//
//  ViewController.swift
//  SliderColor_Connexion
//
//  Created by حمد الحريصي on 17/10/2021.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    
    //@IBOutlet weak var resbutton: UIButton!
    @IBOutlet weak var viewRes: UIView!
    
    override func viewDidLoad() {
        
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }

    
    
    @IBAction func actionR(_ sender: Any) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        viewRes.backgroundColor = UIColor (red:redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
    
    
    
    
    
    @IBAction func action2(_ sender: Any) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        viewRes.backgroundColor = UIColor (red:redValue, green: greenValue, blue: blueValue, alpha: 1)
    
    }
    
    
    @IBAction func action3(_ sender: Any) {
   
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        viewRes.backgroundColor = UIColor (red:redValue, green: greenValue, blue: blueValue, alpha: 1)
    
    
    }
    
    

    

    @IBAction func resat1(_ sender: Any) {
        
        let newColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        viewRes.backgroundColor = newColor
        
        
    }
    
    
    
    @IBAction func switchRed(_ sender: Any) {
        
    
        
        
        if redSwitch.isOn {
                   redSlider.isEnabled = true
               }
        else
               {
                   redSlider.isEnabled = false
                   redSlider.value = 0
               }
        if greenSwitch.isOn
               {
                   greenSlider.isEnabled = true
               }
        else
               {
                   greenSlider.isEnabled = false
                   greenSlider.value = 0
               }
        if blueSwitch.isOn
               {
                   blueSlider.isEnabled = true
               }
        else
               {
                   blueSlider.isEnabled = false
                   blueSlider.value = 0
        
        /*
          redSlider.isEnabled = true
      
        redSlider.value = 0.0
    
        greenSlider.isEnabled = true
        greenSlider.value = 0
        
        blueSlider.isEnabled = true
        blueSlider.value = 0
         */
    }

      //  if redSlider.isOn
     //   {
      //     redSlider = false
      //      redSlider.setOn(false, animated: true)
     //    }
     //   else
    //    {
             //redSlider = false
           //  redSlider.setOn(true, animated: true)
   //      }
   //     }
        
    
    
    
    
    


        
    
    
    

   // @IBAction func resat1(_ sender: Any) {
        
    //    viewRes.text = String(Int(sender.value * Float(viewRes)))
    //       viewValue = Float(viewRes.text!)!
 //   }
    
    
    
    
    
    
    
    
    
}
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    private var red:CGFloat = 0.0
    private var green:CGFloat
    private var blue:CGFloat
    
    
    init(red:float ,green:float ,blue:float )
    {
        self.red = CGFloat(red)
        self.green = CGFloat(green)
        self.blue = CGFloat(blue)
    }
    func setRed (red:float)
    {self.red = CGFloat(red) }
    */

