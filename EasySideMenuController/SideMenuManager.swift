//
//  SideMenuManager.swift
//  EasySideMenuController
//
//  Created by Fumiya Tanaka on 2019/01/18.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

protocol ShowSideMenuAPI {
    func showSideMenu(direction: EasySideMenuController.Direction, presented: UIViewController)
}

public class SideMenuManager: ShowSideMenuAPI {
    
    static let shared = SideMenuManager()
    private init() { }
    
//    private let sideMenuViewController = EasySideMenuController
    
    func showSideMenu(direction: EasySideMenuController.Direction, presented: UIViewController) {
        switch direction {
        case .left:
            break
        default:
            break
        }
    }
    
}
