//
//  ThirdViewControllerCoordinator.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

class ThirdViewControllerCoordinator: BaseCoordinator {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    override func start() {
        let thirdVc = ThirdViewController()
        thirdVc.delegate = self
        navigationController.pushViewController(thirdVc, animated: true)
    }
}
