//
//  ViewController.swift
//  Tips Application
//
//  Created by Inna Litvinenko on 3/11/20.
//  Copyright © 2020 Inna Litvinenko. All rights reserved.
//

import UIKit

var firstValue: Int = 18
var secondValue: Int = 20
var thirdValue: Int = 22

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    
    var percent: Int = 18
    var total: Int = 0
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func didEditingChanged(_ sender: Any) {
        totalLabel.text = textField.text
        update()
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            percent = firstValue
            print(firstValue)
        }
        else if segment.selectedSegmentIndex == 1 {
            percent = secondValue
            print(secondValue)
            
        }
        else {
            percent = thirdValue
            print(thirdValue)
        }
        update()
        
    }
    
    func update () {
        if let bill = textField.text {
            number = Int(bill) ?? 0
        }
        total = number + number * percent / 100
        tipLabel.text = "$" + String(number * percent / 100)
        totalLabel.text = "$" + String(total)
        
    }
    
    
    @IBAction func updateSegmentButtonWasClicked(_ sender: Any) {
            segment.setTitle(String(firstValue) + "%", forSegmentAt: 0)
            segment.setTitle(String(secondValue) + "%", forSegmentAt: 1)
            segment.setTitle(String(thirdValue) + "%", forSegmentAt: 2)
        
    }
    
}



