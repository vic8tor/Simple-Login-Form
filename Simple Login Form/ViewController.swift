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
    private let password = "Swift"
    let userName = "Developer"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func loginAction() {
      
        
        
        
    }
    
    @IBAction func userForgotAction() {
        showAlert(title: "Attension!", message: "Your login is \(userName)")
    }
    
    @IBAction func passwordForgotAction() {
        showAlert(title: "Attension!", message: "You password is \(password)")
    }
    
//    private func check(inputData: String?) -> Bool {
//        
//    
//    }

}


// MARK: - Private Methods
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        }
}
