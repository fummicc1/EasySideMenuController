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

    @IBAction func didTapLeftSideMenuButton() {        
        
        let modalVC = UIStoryboard(name: "Left", bundle: nil).instantiateInitialViewController() as! LeftModalViewController
        
        SideMenuManager.shared.showSideMenu(direction: .left, presenting: self, presented: modalVC, sideMenuSize: CGSize(width: 150, height: UIScreen.main.bounds.height))
    }
    
    @IBAction func didTapRightSideMenuButton() {
        
        let modalVC = UIStoryboard(name: "Right", bundle: nil).instantiateInitialViewController() as! RightModalViewController
        
        SideMenuManager.shared.showSideMenu(direction: .right, presenting: self, presented: modalVC, sideMenuSize: CGSize(width: 150, height: UIScreen.main.bounds.height))        
    }
}
