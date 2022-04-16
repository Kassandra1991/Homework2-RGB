//
//  ViewController.swift
//  RGB
//
//  Created by MacBook Pro on 2022-04-14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var viewRGB: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(displayP3Red: 0, green: 10, blue: 255, alpha: 0.4)
        viewRGB.layer.cornerRadius = 15
        
        settings(slider: redSlider)
        settings(slider: greenSlider)
        settings(slider: blueSlider)
        
        setColor()
       
    }

    func settings(slider: UISlider) {
        slider.minimumValue = 0
        slider.maximumValue = 255
        slider.maximumTrackTintColor = .black
        slider.value = 1
        
        
    }
    
    func setColor() {
        viewRGB.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
    
    @IBAction func sliderRGB(_ sender: UISlider) {
        setColor()
        
        switch sender.tag {
        case 0:
            redLabel.text = string(from: sender);
        case 1:
            greenLabel.text = string(from: sender);
        case 2:
            blueLabel.text = string(from: sender);
        default: break
        }
    }
    
}

func string(from slider: UISlider) -> String {
    return String(Int(slider.value))
}
