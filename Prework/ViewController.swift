//
//  ViewController.swift
//  Prework
//
//  Created by Mohammad N. Islam on 8/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var total: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // Creating a variable that holds the entered bill amount.
        let billAmount = Double(billAmountTextField.text!) ?? 0
        
        // Generate the total tip by multiplying tip and tipControl percentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tipAmount = billAmount * tipPercentages[tipControl.selectedSegmentIndex]
        let totalAmount = billAmount + tipAmount
        
        //Updating tipLabel with tip amount
        tip.text = String(format: "$%.2f", tipAmount)
        
        //Udating totalLabel with total amount
        total.text = String(format: "$%.2f", totalAmount)
    }
    
    
}

