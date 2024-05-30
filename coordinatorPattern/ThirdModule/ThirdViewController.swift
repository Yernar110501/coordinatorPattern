//
//  ThirdViewController.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

class ThirdViewController: UIViewController {
    weak var delegate: ThirdViewControllerCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Third"
    }
}
