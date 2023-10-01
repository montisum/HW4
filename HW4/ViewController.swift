//
//  ViewController.swift
//  HW4
//
//  Created by Monti on 01.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redMeaningLabel: UILabel!
    @IBOutlet weak var greenMeaningLabel: UILabel!
    @IBOutlet weak var blueMeaningLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 20
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    @IBAction func redSliderAction() {
        changingColorValue()
        changingColorView()
    }
    
    @IBAction func greenSliderAction() {
        changingColorValue()
        changingColorView()
    }
    
    @IBAction func blueSliderAction() {
        changingColorValue()
        changingColorView()
    }
    
    private func changingColorValue() {
        redMeaningLabel.text = String(format: "%.2f", redSlider.value)
        greenMeaningLabel.text = String(format: "%.2f", greenSlider.value)
        blueMeaningLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func changingColorView() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }

}

