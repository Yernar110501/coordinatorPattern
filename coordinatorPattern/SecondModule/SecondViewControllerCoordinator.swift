//
//  SecondViewControllerCoordinator.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

class SecondViewControllerCoordinator: BaseCoordinator {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    override func start() {
        let secondVc = SecondViewController()
        secondVc.delegate = self
        navigationController.pushViewController(secondVc, animated: true)
    }
}
