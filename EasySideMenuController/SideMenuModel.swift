//
//  SideMenuModel.swift
//  EasySideMenuController
//
//  Created by Fumiya Tanaka on 2019/01/21.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

public struct SideMenuModel {
    
    var direction: Direction
    
    public enum Direction {
        case left
        case right
        case top
        case bottom
    }
    
    var size: CGSize
    
}
