//
//  EasySideMenuAnimator.swift
//  EasySideMenuController
//
//  Created by Fumiya Tanaka on 2019/01/22.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class EasySideMenuAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    private var direction: SideMenuModel.Direction
    
    init(direction: SideMenuModel.Direction) {
        self.direction = direction
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
    }
    
    
    
}
