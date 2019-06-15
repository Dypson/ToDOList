//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Deepson on 6/15/19.
//  Copyright © 2019 Deepson. All rights reserved.
//

import UIKit
 var items = [""]
class FirstViewController: UIViewController, UITextFieldDelegate ,UITableViewDataSource {
    @IBOutlet weak var myTableView: UITableView!

    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
       return items.count
    }
    
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text=items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCell.EditingStyle.delete {
            items.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

