//
//  AppCoordinator.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    private var window: UIWindow
    private var navigationController: UINavigationController = {
        let nc = UINavigationController()
        return nc
    }()
    
    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
    
    override func start() {
        let mainVcCoordinator = MainViewControllerCoordinator(navigationController: navigationController)
        addChild(coordinator: mainVcCoordinator)
        mainVcCoordinator.start()
    }
}
