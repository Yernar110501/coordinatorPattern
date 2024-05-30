//
//  MainViewControllerCoordinator.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

class MainViewControllerCoordinator: BaseCoordinator {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    override func start() {
        let mainVc = MainViewController()
        mainVc.delegate = self
        navigationController.pushViewController(mainVc, animated: true)
    }
    func runSecond() {
        let secondCoordinator = SecondViewControllerCoordinator(navigationController: navigationController)
        addChild(coordinator: secondCoordinator )
        secondCoordinator.start()
    }
    func runThird() {
        let thirdCoordinator = ThirdViewControllerCoordinator (navigationController: navigationController)
        addChild(coordinator: thirdCoordinator )
        thirdCoordinator.start()
    }
}
