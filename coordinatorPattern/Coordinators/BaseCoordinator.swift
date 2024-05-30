//
//  BaseCoordinator.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

class BaseCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    
    
    func start() {
        fatalError("child should implement funStart")
    }
    
    
}
