//
//  ViewController.swift
//  ContentContainerExample
//
//  Created by Greg Spiers on 19/07/2017.
//  Copyright © 2017 Greg Spiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var childViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var childViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var childContainerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer) {
        super.preferredContentSizeDidChange(forChildContentContainer: container)
        
        childViewHeightConstraint.constant = container.preferredContentSize.height
        childViewWidthConstraint.constant = container.preferredContentSize.width
        childContainerView.layoutIfNeeded()
        
        // Do we have to call this manually? And if so do we have to make a UIViewControllerTransitionCoordinator implementation?
        // Would it be possible to make _UIViewControllerNullAnimationTransitionCoordinator public?
        
        // container.viewWillTransition(to: container.preferredContentSize, with: UIViewControllerTransitionCoordinator)
    }
}

