//
//  PresentationController.swift
//  EasySideMenuController
//
//  Created by Fumiya Tanaka on 2019/01/21.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation


protocol DirectionDetecter {
    
    var overView: UIView! { get }
    
    func decideLayout(direction: SideMenuModel.Direction)
    
}

class EasyPresentationController: UIPresentationController, DirectionDetecter {
    
    var direction: SideMenuModel.Direction
    
    var overView: UIView!
    
    init(presented: UIViewController, presenting: UIViewController?, direction: SideMenuModel.Direction) {
        self.direction = direction
        super.init(presentedViewController: presented, presenting: presenting)
    }
    
    // 表示トランザクション前に呼ばれる
    override func presentationTransitionWillBegin() {
        super.presentationTransitionWillBegin()
        self.decideLayout(direction: direction)
    }
    
    func decideLayout(direction: SideMenuModel.Direction) {
        
        guard let containerView = containerView else {
            return
        }
        
        overView = UIView(frame: containerView.bounds)
        
        switch direction {
        case .left:
            containerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height)
        case .right:
            containerView.frame = CGRect(x: UIScreen.main.bounds.width / 2, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        case .top:
            containerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 2)
        case .bottom:
            containerView.frame = CGRect(x: 0, y: UIScreen.main.bounds.height / 2, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
        }
        containerView.addSubview(overView)
        
        startTransition()
        
    }
    
    private func startTransition() {
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { [weak self] (context) in
            self?.overView.alpha = 0.6
        }, completion: nil)
    }
    
    override func dismissalTransitionWillBegin() {
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { [weak self] (context) in
            self?.overView.alpha = 0.0
        }, completion: nil)
    }
    
}
