//
//  SecondViewController.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

class SecondViewController: UIViewController {

    weak var delegate: SecondViewControllerCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        title = "Second"
    }

}
