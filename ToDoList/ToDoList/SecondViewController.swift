//  SecondViewController.swift
//  ToDoList
//
//  Created by Deepson on 6/15/19.
//  Copyright © 2019 Deepson. All rights reserved.
import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var inputString: UITextField!
    @IBAction func AddItem(_ sender: Any) {
        let itemsObject=UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let tempItems = itemsObject as?[String]{
            items=tempItems
            items.append(inputString.text!)
        }else{
            items=[inputString.text!]
        }
UserDefaults.standard.set(items, forKey: "items")
inputString.text=""
        self.view.endEditing(true)
            }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
     func textFieldShouldReturn(_ textField: UITextField) -> Bool{
       inputString.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       self.view.endEditing(true)
    }
}

