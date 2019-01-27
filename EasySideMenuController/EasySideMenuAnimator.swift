//
//  EasySideMenuAnimator.swift
//  EasySideMenuController
//
//  Created by Fumiya Tanaka on 2019/01/22.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class EasySideMenuAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.2
    }
    
    
    private var direction: SideMenuModel.Direction
    
    init(direction: SideMenuModel.Direction) {
        self.direction = direction
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        // 遷移元ViewController
        let from = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)!
        // 遷移先ViewController
        let to = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)!
        
        let containerView = transitionContext.containerView // 全体の元となるView
        
        containerView.insertSubview(to.view, belowSubview: from.view)
        
        let originToVCFrame = to.view.frame
        
        
        
        print(originToVCFrame)
        
        // set animation start position
        if direction == .left {
            
            to.view.frame = .zero
            UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
                to.view.frame = CGRect(x: 0, y: 0, width: originToVCFrame.width, height: originToVCFrame.height)
            }) { (completed) in
                // トランジションが完了したことを通知 (遷移が中断された状態かを通知)
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
            }
            
        } else if direction == .right {
            
            to.view.frame = CGRect(x: from.view.frame.maxX, y: 0, width: 0, height: originToVCFrame.height)
            UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
                to.view.frame = CGRect(x: from.view.frame.maxX - originToVCFrame.width, y: 0, width: originToVCFrame.width, height: originToVCFrame.height)
            }) { (completed) in
                // トランジションが完了したことを通知 (遷移が中断された状態かを通知)
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
            }
            
        } else if direction == .top {
            
            to.view.frame = CGRect(x: 0, y: 0, width: originToVCFrame.width, height: 0)
            UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
                to.view.frame = CGRect(x: 0, y: 0, width: originToVCFrame.width, height: originToVCFrame.height)
            }) { (completed) in
                // トランジションが完了したことを通知 (遷移が中断された状態かを通知)
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
            }
            
        } else if direction == .bottom {
            
            to.view.frame = CGRect(x: 0, y: from.view.frame.maxY, width: originToVCFrame.width, height: 0)
            UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
                to.view.frame = CGRect(x: 0, y: from.view.frame.maxY - originToVCFrame.height, width: originToVCFrame.width, height: originToVCFrame.height)
            }) { (completed) in
                // トランジションが完了したことを通知 (遷移が中断された状態かを通知)
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
            }
            
        }
        
        // do animation
        
    }
}
