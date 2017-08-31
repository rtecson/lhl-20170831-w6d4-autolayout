//
//  ViewController.swift
//  w6d4-autolayout
//
//  Created by Roland on 2017-08-30.
//  Copyright © 2017 MoozX Internet Ventures. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create two views
        let view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        let view2 = UIView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        view1.backgroundColor = UIColor.red
        view2.backgroundColor = UIColor.blue
        view.addSubview(view1)
        view.addSubview(view2)
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        let view1TrailingConstraint = NSLayoutConstraint(item: view1, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -50)
        let view1TopConstraint = NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 50)
        let view1WidthConstraint = NSLayoutConstraint(item: view1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50)
        let view1HeightConstraint = NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50)
        view1WidthConstraint.isActive = true
        view1HeightConstraint.isActive = true
        view1TopConstraint.isActive = true
        view1TrailingConstraint.isActive = true
        
        // Older way of activating constraints
//        view1.addConstraints([view1WidthConstraint, view1HeightConstraint])
//        view.addConstraints([view1TrailingConstraint, view1TopConstraint])
    }
}
