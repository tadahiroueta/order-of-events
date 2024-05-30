//
//  Last.swift
//  order-of-events
//
//  Created by Ueta, Lucas T on 2/13/24.
//

import UIKit

class Last: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let stack = addStack(to: view)
        
        let label = UILabel()
        label.text = "Go back and see if anything happened."
        stack.addArrangedSubview(label)
    }
}
