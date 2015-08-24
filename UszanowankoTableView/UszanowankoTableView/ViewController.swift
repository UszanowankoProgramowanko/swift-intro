//
//  ViewController.swift
//  UszanowankoTableView
//
//  Created by Aleksander on 14.08.2015.
//  Copyright (c) 2015 The Software House. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var someValues:[Int:String] = [0 : "Krowa", 1 : "Kot", 2 : "Mysz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
        self.tableView.delegate = self
    }
    
//    override func viewDidAppear(animated: Bool) {
//        <#code#>
//    }
//
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return someValues.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellId = "Cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath) as! MyCell
        
        cell.textLabel?.text = someValues[indexPath.row]
        cell.detailTextLabel?.text = "Handluj z tym"
        return cell
    }
}

