//
//  ViewController.swift
//  Demo
//
//  Created by Fumiya Tanaka on 2019/01/09.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit
import EasySideMenuController

class ViewController: EasySideMenuController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tappedShowSideMenuButton() {        
        let modalVC = DemoModalViewController()
        SideMenuManager.shared.showSideMenu(direction: .left, presenting: self, presented: modalVC)
    }
}
