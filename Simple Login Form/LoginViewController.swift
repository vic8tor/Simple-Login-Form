//
//  LoginViewController.swift
//  Simple Login Form
//
//  Created by Victor on 14.12.2021.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var greeting: UILabel!
    
    // MARK: - Public Properties
    var greetingUser: String!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    setGradientSedondView()
    greeting.text = greetingUser
    }
    
    // MARK: - IB Actions
    @IBAction func logOut() {
        dismiss(animated: true)
    }
}

// MARK: - Private Methods
extension LoginViewController {
    private func setGradientSedondView() -> Void {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemRed.cgColor,
            UIColor.systemBlue.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
