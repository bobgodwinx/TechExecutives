//
//  SceneDelegate.swift
//  TechExecutives
//
//  Created by Bob Godwin Obi on 05.06.19.
//  Copyright © 2019 Bob Godwin Obi. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    /// Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    /// If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    /// This delegate does not imply the connecting scene or session are new
    /// (see `application:configurationForConnectingSceneSession` instead).
    ///
    /// Use a UIHostingController as window root view controller
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIHostingController(rootView: RootView())
        self.window = window
        window.makeKeyAndVisible()
    }

    /// Called as the scene is being released by the system.
    /// This occurs shortly after the scene enters the background, or when its session is discarded.
    /// Release any resources associated with this scene that can be re-created the next time the scene connects.
    /// The scene may re-connect later, as its session was not neccessarily
    /// discarded (see `application:didDiscardSceneSessions` instead)
    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }
}

