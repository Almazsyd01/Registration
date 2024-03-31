//
//  SuccesViewController.swift
//  RegistrationControllerHw
//
//  Created by Mac on 1/4/24.
//

import UIKit

class SuccesViewController: UIViewController {

    private let imageSucces: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .success)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        setupUI()
    }
    
    private func setupUI() {
        
        view.addSubview(imageSucces)
        
        NSLayoutConstraint.activate(
            [imageSucces.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             imageSucces.centerYAnchor.constraint(equalTo: view.centerYAnchor),
             imageSucces.widthAnchor.constraint(equalToConstant: 160),
             imageSucces.heightAnchor.constraint(equalToConstant: 183)
        ])
    }
}
