//
//  Coordinator.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

extension Coordinator {
    func addChild(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }
    func remove (coordinator: Coordinator) {
        childCoordinators =  childCoordinators.filter { $0 !== coordinator }
    }
}
