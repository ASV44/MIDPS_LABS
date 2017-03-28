//
//  ViewController.swift
//  calculator
//
//  Created by Hackintosh on 3/27/17.
//  Copyright © 2017 Hackintosh. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var devide_button: NSButton!
    @IBOutlet weak var editText: NSTextField!
    @IBOutlet weak var equal_button: NSButton!
    @IBOutlet weak var clear: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func clearAction(_ sender: Any) {
        self.editText.stringValue = ""
    }
    @IBAction func equalAction(_ sender: Any) {
        let stringWithMathematicalOperation: String = self.editText.stringValue
        let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation)
        let result: Float = exp.expressionValue(with: nil, context: nil) as! Float
        self.editText.stringValue = String(result)
        print(result)
    }
    
}

