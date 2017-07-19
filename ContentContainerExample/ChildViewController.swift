//
//  ChildViewController.swift
//  ContentContainerExample
//
//  Created by Greg Spiers on 19/07/2017.
//  Copyright © 2017 Greg Spiers. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {
    @IBOutlet weak var labelToAnimate: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func sizeButtonTapped(_ sender: Any) {
        preferredContentSize = CGSize(width: 300, height: 200)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate(alongsideTransition: { (_) in
            self.labelToAnimate.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        }) { (_) in
            self.labelToAnimate.transform = CGAffineTransform.identity
        }
    }
    
}
