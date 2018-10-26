// Created on: 25-Oct-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program calculates a factorial number better
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let numberTextField = UITextField()
    let submitButton = UIButton()
    let answerLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter a positive integer up to 100, and we will calculate the factorial."
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "   "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        numberTextField.bottomAnchor.constraint(equalTo: instructionsLabel.topAnchor, constant: 80).isActive = true
        
        submitButton.setTitle("Submit", for: UIControlState.normal)
        submitButton.setTitleColor(.blue, for: .normal)
        submitButton.addTarget(self, action: #selector(calculateFactional), for: .touchUpInside)
        view.addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        submitButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        answerLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        answerLabel.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 20).isActive = true
        
    }
    @objc func calculateFactional() {
        //  
        
        var number : Int = Int(numberTextField.text!)!
        var counter = 0
        var answer = 1
        
        if number > 100 {
            answerLabel.text = "Please pick a number less than 100."
        }
        else if number < 0 {
            answerLabel.text = "Please pick a number that is greater than 0."
        }
        else if number == 0 {
            answerLabel.text = "The answer is 1."
        }
        for counter in 1...number {
            answer = answer * counter
        }
        
        answerLabel.text = "The answer is \(answer)."
    }
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
