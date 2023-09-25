//
//  ViewController.swift
//  Calculator
//
//  Created by Andrew Higbee on 9/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcLabel: UILabel!
    
    @IBOutlet var numberButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func zeroButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "0"
            } else {
                calcLabel.text = label + "0"
            }
        }
    }
    
    @IBAction func decimalButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "0."
            } else if label.contains(".") {
                calcLabel.text = label
            }
            else {
                calcLabel.text = label + "."
            }
        }
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "1"
            } else {
                calcLabel.text = label + "1"
            }
        }
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "2"
            } else {
                calcLabel.text = label + "2"
            }
        }
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "3"
            } else {
                calcLabel.text = label + "3"
            }
        }
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "4"
            } else {
                calcLabel.text = label + "4"
            }
        }
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "5"
            } else {
                calcLabel.text = label + "5"
            }
        }
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "6"
            } else {
                calcLabel.text = label + "6"
            }
        }
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "7"
            } else {
                calcLabel.text = label + "7"
            }
        }
    }
    
    @IBAction func eightButton(_ sender: Any) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "8"
            } else {
                calcLabel.text = label + "8"
            }
        }
    }
    
    @IBAction func nineButton(_ sender: Any) {
        if let label = calcLabel.text {
            if label == "0" {
                calcLabel.text = "9"
            } else {
                calcLabel.text = label + "9"
            }
        }
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        calcLabel.text = "0"
    }
    
    @IBAction func negativeButton(_ sender: UIButton) {
        guard let label = calcLabel.text else { return }
        
        guard let labelNum = Double(label) else { return }
        
        if labelNum >= 0 {
            if floor(labelNum) == labelNum {
                let numVar = String(Int(labelNum))
                calcLabel.text = "-" + numVar
            } else {
                calcLabel.text = "-" + label
            }
        } else if labelNum < 0 {
            if floor(labelNum) == labelNum {
                let newNum = labelNum * -1
                calcLabel.text = String(Int(newNum))
            } else {
                let newNum = labelNum * -1
                calcLabel.text = String(newNum)
            }
        }
        
        
//        if let label = calcLabel.text {
//            if let labelNum = Double(label) {
//                if labelNum >= 0 {
//                    calcLabel.text = "-" + label
//                }
//                else if labelNum < 0 {
//                    var newNum = labelNum * -1
//                    calcLabel.text = String(newNum)
//                }
//            }
//        }
    }
    
    @IBAction func modulusButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label != "0" || label != "" {
                calcLabel.text = label + " % "
            }
        }
    }
    
    @IBAction func divisionButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label != "0" || label != "" {
                calcLabel.text = label + " ÷ "
            }
        }
    }
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label != "0" || label != "" {
                calcLabel.text = label + " * "
            }
        }
    }
    
    @IBAction func subtractButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label != "0" || label != "" {
                calcLabel.text = label + " - "
            }
        }
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        if let label = calcLabel.text {
            if label != "0" || label != "" {
                calcLabel.text = label + " + "
            }
        }
    }
    
    @IBAction func equalsButton(_ sender: UIButton) {
        if floor(equals()) == equals() {
            calcLabel.text = String(Int(equals()))
        } else {
            calcLabel.text = String(equals())
        }
    }
    
    func equals() -> Double {
        guard let input = calcLabel.text else { return 0 }
        
        let inputArray = input.components(separatedBy: " ")
        
        if inputArray.count > 1 && inputArray.count < 4 {
            guard let operand1 = Double(inputArray[0]) else { return 0 }
            guard let operand2 = Double(inputArray[2]) else { return 0 }
            
            switch inputArray[1] {
            case "-":
                return operand1 - operand2
            case "+":
                return operand1 + operand2
            case "÷":
                if operand2 == 0 {
                    return 0
                }
                return operand1 / operand2
            case "*":
                return operand1 * operand2
            case "%":
                return Double(Int(operand1) % Int(operand2))
            default:
                return 0.0
            }
        } else {
            if let result = Double(calcLabel.text ?? "0") {
                return result
            }
        }
//        This code is for complex expressions in the future
//        if inputArray.count > 4 {
//            for (index, item) in inputArray.enumerated() {
//                if item == "*" {
//                    let operand1 = Double(inputArray[index-1])
//                    let operand2 = Double(inputArray[index+1])
//
//                }
//            }
//        }
        
        var operationStack = Stack()
        var outputQueue = Queue<String>()
        var operatorStack = [""]
        var index = 0
        while(inputArray.count > 0) {
            if let inputNum = Double(inputArray[index]) {
                outputQueue.enqueue(inputArray[index])
            }
        }
        return 0
    }
}
