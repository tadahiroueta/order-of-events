//
//  Structure.swift
//  order-of-events
//
//  Created by Ueta, Lucas T on 2/13/24.
//

import UIKit

func addStack(to view: UIView, with titleView: UIView? = nil) -> UIStackView {
    let stack = UIStackView()
    stack.axis = .vertical
    stack.alignment = .center
    stack.distribution = .fillProportionally
    view.addSubview(stack)
    stack.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        stack.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
        stack.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
        stack.topAnchor.constraint(equalTo: titleView?.bottomAnchor ?? view.safeAreaLayoutGuide.topAnchor, constant: 20)
    ])
    return stack
}
