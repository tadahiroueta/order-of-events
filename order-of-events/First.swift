//
//  First.swift
//  order-of-events
//
//  Created by Ueta, Lucas T on 2/13/24.
//

import UIKit

class First: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let stack = addStack(to: view)
        
        let button = UIButton()
        button.setTitle("Show me the life cycle", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(segueToMiddle), for: .touchUpInside)
        stack.addArrangedSubview(button)
    }

    @objc func segueToMiddle() { navigationController?.pushViewController(Middle(), animated: true) }
}

