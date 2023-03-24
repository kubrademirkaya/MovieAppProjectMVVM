//
//  SceneDelegate.swift
//  MovieAppProjectMVVM
//
//  Created by Kübra Demirkaya on 24.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        // Pencere tanımlanıyor.
        let window = UIWindow(windowScene: windowScene)
        // Ana controllerın MovieHomeController olduğu bildiriliyor.
        let mainController = MovieHomeController()
        // MainControllera bağlı navigation controller ekleniyor. Bu navigation controller pencerinin kök controllerı olarak bildiriliyor.
        let navigationController = UINavigationController(rootViewController: mainController)
        window.rootViewController = navigationController
        //windowun başlaması için gerekli komut
        window.makeKeyAndVisible()
        self.window = window
    }

}

