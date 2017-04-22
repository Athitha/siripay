//
//  ViewController.swift
//  Siripay
//
//  Created by Athitha Anantharamu on 12/4/16.
//  Copyright © 2016 Athitha Anantharamu. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    @IBOutlet weak var siriswitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        siriswitch.setOn(false, animated: false)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Siriswitchaction(_ sender: Any) {
        
        if siriswitch.isOn{
            INPreferences.requestSiriAuthorization({ (status) in
             print(status)
            })
        }
        
    }

}

