//
//  ViewController.swift
//  Autolayout
//
//  Created by 李弋 on 8/5/15.
//  Copyright (c) 2015 李弋. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    var secure:Bool = false { didSet{ updateUI() } }
    private func updateUI()
    {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" :  "Password"
    }
    @IBAction func toggleSecure(sender: UIButton) {
        secure = !secure
    }
    
}

