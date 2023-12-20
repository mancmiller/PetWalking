//
//  SceneDelegate.swift
//  PetWalking
//
//  Created by Muslim on 12.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let vc = HomeController()
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = LoginController()
        window?.makeKeyAndVisible()
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
        let userRequest = RegisterUserRequest(email: "wazza311098@gmail.com", password: "password123")
        AuthenticationService.shared.registerUser(with: userRequest) { wasRegistered, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            print("wasRegistered", wasRegistered)
        }
    }
}
