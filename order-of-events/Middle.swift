//
//  Middle.swift
//  order-of-events
//
//  Created by Ueta, Lucas T on 2/13/24.
//

import UIKit

class Middle: UIViewController {
    let label = UILabel()
    var eventNumber = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let stack = addStack(to: view)
        stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        label.text = "Nothing has happened yet."
        label.numberOfLines = 0
        stack.addArrangedSubview(label)
        
        let button = UIButton()
        button.setTitle("???", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(segueToLast), for: .touchUpInside)
        stack.addArrangedSubview(button)
        addEvent(from: "viewDidLoad")
    }
    
    @objc func segueToLast() { navigationController?.pushViewController(Last(), animated: true) }
    
    func addEvent(from: String) {
        if let existingText = label.text {
            label.text = "\(existingText) \nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
}
