//
//  PresentationController.swift
//  EasySideMenuController
//
//  Created by Fumiya Tanaka on 2019/01/21.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class EasyPresentationController: UIPresentationController {
    
    var overView: UIView!
    
    init(presented: UIViewController, presenting: UIViewController?) {
        super.init(presentedViewController: presented, presenting: presenting)
    }
    
    // 表示トランザクション前に呼ばれる
    override func presentationTransitionWillBegin() {
        super.presentationTransitionWillBegin()
        
        overView = UIView()
        overView.frame = containerView?.frame ?? .zero
        overView.isUserInteractionEnabled = true
        overView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissPresentedVC)))
        
        containerView?.addSubview(overView)
        
    }
    
    override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        return SideMenuManager.shared.menuModel!.size
    }
    
//
//    private func startTransition() {
//        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { [weak self] (context) in
//            self?.overView.alpha = 0.6
//        }, completion: nil)
//    }
//
//    override func dismissalTransitionWillBegin() {
//        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { [weak self] (context) in
//            self?.overView.alpha = 0.0
//        }, completion: nil)
//    }
//
}

extension EasyPresentationController {
    @objc private func dismissPresentedVC() {
        presentedViewController.dismiss(animated: true, completion: nil)
    }
}
