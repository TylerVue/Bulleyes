//
//  ViewController.swift
//  Bulleyes
//
//  Created by Mobile Apps on 11/21/24.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 50
    var targetValue = 0

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }

    //Shows a pop-up alert message when the HIT ME button is pressed
    @IBAction func showAlert() {
        
        let difference = abs(targetValue - currentValue)
        
//        let point

        let message =
            "The value of the slider is now: \(currentValue)"
            + "\nThe target value is now: \(targetValue)"

        let alert = UIAlertController(
            title: "Hello World",
            message: message,
            preferredStyle: .alert)

        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)

        alert.addAction(action)

        present(alert, animated: true, completion: nil)

        startNewRound()
    }

    // Updates the values of the slider when if is changed.
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = Int(slider.value)
    }

    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }

    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
}
