//
//  SceneDelegate.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 15.06.2026.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windewScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windewScene)
        
        let viewController = ViewController()
        viewController.teaManager = buildTeaManager()
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }
}

extension SceneDelegate {
    func buildTeaManager() -> ITeaManager {
        let teaDataManager: ITeaDataManager = TeaDataManager()
        let teaManager: ITeaManager = TeaManager()
        teaManager.addTeas(teaDataManager.getTeas())
        return teaManager
    }
}
