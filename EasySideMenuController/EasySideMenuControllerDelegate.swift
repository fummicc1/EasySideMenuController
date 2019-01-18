//
//  EasySideMenuPresentationController.swift
//  EasySideMenuController
//
//  Created by Fumiya Tanaka on 2019/01/18.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class EasySideMenuControllerDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    var modalPresentationController: EasySideMenuController?
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return modalPresentationController
    }
    
}
