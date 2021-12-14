//
//  ViewController.swift
//  Simple Login Form
//
//  Created by Victor on 14.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var userForgotButton: UIButton!
    @IBOutlet weak var passwordForgotButton: UIButton!
    let password = "Developer"
    let userName = "Swift"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if loginValidate(for: usernameTF, passwd: passwordTF) {
            guard let loginVC = segue.destination as? LoginViewController else { return }
            loginVC.greetingUser = "Welcome, \(userName)"
        } else { showAlert(title: "Authentification failed",
                           message: "Incorrect username or password")}
        }
 
    @IBAction func loginAction() {

    }
    
    @IBAction func userForgotAction() {
        showAlert(title: "Attension!",
                  message: "Your login is \(userName)")
    }
    
    @IBAction func passwordForgotAction() {
        showAlert(title: "Attension!",
                  message: "You password is \(password)")
    }
    
    @IBAction func emptyCheck() {

}
}


// MARK: - Private Methods
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        }
}

extension ViewController {
    private func loginValidate(for login: UITextField, passwd: UITextField) -> Bool {
        guard let login = login.text, let passwd = passwd.text,
                login == userName, passwd == password else {
            return false
        }
    return true
    }
}
