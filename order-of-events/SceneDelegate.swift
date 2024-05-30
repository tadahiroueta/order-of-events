//
//  SceneDelegate.swift
//  order-of-events
//
//  Created by Ueta, Lucas T on 2/13/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(rootViewController: First())
        window?.makeKeyAndVisible()
    }
}

