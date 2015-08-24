//
//  ViewController.swift
//  UszanowankoiOSApp
//
//  Created by Aleksander on 14.08.2015.
//  Copyright (c) 2015 The Software House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderChanged(sender: UISlider) {
        println(Int(sender.value))
        var fontSize:CGFloat = CGFloat(sender.value)
        name.font = UIFont(name: name.font.fontName, size: fontSize)
    }

    @IBAction func clickBtn(sender: AnyObject) {
        println("Wprowadzono imię: \(self.nameLabel.text)")
        self.name.text = self.nameLabel.text
    }
}

