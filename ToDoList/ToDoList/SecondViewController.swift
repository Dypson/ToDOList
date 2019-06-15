//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Deepson on 6/15/19.
//  Copyright © 2019 Deepson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var inputString: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     func textFieldShouldReturn(_ textField: UITextField) -> Bool{
       inputString.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       self.view.endEditing(true)
    }
}

