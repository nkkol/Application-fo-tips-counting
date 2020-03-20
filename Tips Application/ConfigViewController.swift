//
//  ConfigViewController.swift
//  Tips Application
//
//  Created by Inna Litvinenko on 3/11/20.
//  Copyright © 2020 Inna Litvinenko. All rights reserved.
//

import UIKit

class ConfigViewController: UIViewController {
    

    @IBOutlet weak var firstTextField: UITextField!
    
    
    @IBOutlet weak var secondTextField: UITextField!
    
    
    @IBOutlet weak var thirdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTextField.text = String(firstValue)
        secondTextField.text = String(secondValue)
        thirdTextField.text = String(thirdValue)
    }
    
    
    @IBAction func firstChanged(_ sender: Any) {
        if let value = firstTextField.text {
                   firstValue = Int(value) ?? firstValue
               }
      
    }
    
    @IBAction func secondChanged(_ sender: Any) {
        if let value = secondTextField.text {
            secondValue = Int(value) ?? secondValue
        }
       
    }
    
    
    @IBAction func thirdChanged(_ sender: Any) {
        if let value = thirdTextField.text {
            thirdValue = Int(value) ?? thirdValue
        }
        
    }

}
