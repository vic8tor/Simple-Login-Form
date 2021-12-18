//
//  LoginViewController.swift
//  Simple Login Form
//
//  Created by Victor on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var greeting: UILabel!
    
    // MARK: - Public Properties
    var greetingUser: String!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    setGradientSedondView()
        guard let greetingUser = greetingUser else { return }
        greeting.text = "Welcome, \(greetingUser) \u{1F577}"
    }
}

// MARK: - Private Methods
extension WelcomeViewController {
    private func setGradientSedondView() -> Void {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemRed.cgColor,
            UIColor.systemPurple.cgColor,
            UIColor.systemBlue.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
