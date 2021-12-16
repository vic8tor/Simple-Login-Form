//
//  ViewController.swift
//  Simple Login Form
//
//  Created by Victor on 14.12.2021.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    @IBOutlet weak var userForgotButton: UIButton!
    @IBOutlet weak var passwordForgotButton: UIButton!

    // MARK: - Private Properties
    private let userName = "Peter"
    private let password = "Parker"

    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradient()
        usernameTF.leftViewMode = .always
        usernameTF.leftView = UIImageView(image: UIImage(systemName: "person.fill"))
        usernameTF.leftView?.tintColor = .blue
        
        passwordTF.leftViewMode = .always
        passwordTF.leftView = UIImageView(image: UIImage(systemName: "lock.fill"))
        passwordTF.leftView?.tintColor = .blue
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        loginVC.greetingUser = "Welcome, \(usernameTF.text!) \u{1F577}"
        }

    // MARK: - IB Actions
    @IBAction func logInAction(_ sender: UIButton) {
        if authentification(usernameTF, passwordTF) {
            performSegue(withIdentifier: "welcomeSegue", sender: sender)
        } else {
        showAlert(title: "Authentification failed",
                               message: "Incorrect username or password")
            return
        }
    
    }
    @IBAction func userForgotAction() {
        showAlert(title: "Attention!",
                  message: "Your login is \(userName)")
    }
    
    @IBAction func passwordForgotAction() {
        showAlert(title: "Attention!",
                  message: "You password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = nil
        passwordTF.text = nil
    }
}

// MARK: - Private Methods
extension MainViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        }
}

extension MainViewController {
    private func authentification(_ login: UITextField, _ passwd: UITextField) -> Bool {
        guard let login = login.text, let passwd = passwd.text,
                login == userName, passwd == password else {
            return false
        }
    return true
    }
}

extension MainViewController {
    private func setGradient() -> Void {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemRed.cgColor,
            UIColor.systemBlue.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
