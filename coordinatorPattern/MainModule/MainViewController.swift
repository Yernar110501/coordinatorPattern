//
//  ViewController.swift
//  coordinatorPattern
//
//  Created by Yernar Baiginzheyev on 31.05.2024.
//

import UIKit

class MainViewController: UIViewController {

    weak var delegate: MainViewControllerCoordinator?
    
    private let goSecondButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Go to second vc", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let goThirdButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Go to third vc", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Main"
        goSecondButton.addTarget(self, action: #selector(didTapGoSecondVc), for: .touchUpInside)
        goThirdButton.addTarget(self, action: #selector(didTapGoThirdVc), for: .touchUpInside)
        
        
        view.addSubview(goSecondButton)
        view.addSubview(goThirdButton)

        NSLayoutConstraint.activate([
            goSecondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goSecondButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            goThirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goThirdButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
        ])

    }
    
    @objc func didTapGoSecondVc() {
        delegate?.runSecond()
    }
    
    @objc func didTapGoThirdVc() {
        delegate?.runThird()
    }



}

