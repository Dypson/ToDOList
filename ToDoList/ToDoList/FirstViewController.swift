//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Deepson on 6/15/19.
//  Copyright © 2019 Deepson. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController, UITextFieldDelegate ,UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    var items: [String] = []
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
       return items.count
    }
    
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        var cellLabel=""
        if let tempLabel=items[indexPath.row] as? String{
            cellLabel=tempLabel
        }
        cell.textLabel?.text=cellLabel
        return cell
    }
    
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCell.EditingStyle.delete {
            items.remove(at: indexPath.row)
        }
    table.reloadData()
    UserDefaults.standard.set(items, forKey: "items")
    }

 override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemsObject as? [String] {
            items = tempItems
    }
       table.reloadData()
}
}
