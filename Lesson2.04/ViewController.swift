//
//  ViewController.swift
//  Lesson2.04
//
//  Created by Goodwasp on 30.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        setupSlider()
        setupMainLabel()
    }
    // MARK: IBActions
    @IBAction func segmentedControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "FIRST"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "second"
            mainLabel.textColor = .orange
        default:
            mainLabel.text = "ThIrD"
            mainLabel.textColor = .green
        }
    }
    
    @IBAction func sliderAction() {
        mainLabel.text = slider.value.formatted()
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(slider.value))
    }
    
    @IBAction func doneButtonPressed() {
        guard let inputText = textField.text, !inputText.isEmpty else {
            print("textField is empty")
            return
        }
        
        if let _ = Double(inputText) {
            print("wrong format")
        }
            
        mainLabel.text = textField.text
    }
    
    // MARK: private methods
    private func setupMainLabel() {
        mainLabel.text = slider.value.formatted()
        mainLabel.font = UIFont.systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
    
    private func setupSlider() {
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .black
        slider.thumbTintColor = .white
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        
    }
}

