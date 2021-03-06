//
//  ViewController.swift
//  Simple Login Form
//
//  Created by Victor on 14.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    @IBOutlet weak var userForgotButton: UIButton!
    @IBOutlet weak var passwordForgotButton: UIButton!

    // MARK: - Private Properties
    let person = Person.getPerson()
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
        let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let loginVC = viewController as? WelcomeViewController {
                loginVC.greetingUser = person[0].fullname
            } else if let navigationVC = viewController as? UINavigationController {
                let profileVC = navigationVC.topViewController as! ProfileViewController
                profileVC.fullname = person[0].fullname
                profileVC.cityInHead = person[0].city
                profileVC.professionInHead = person[0].position.rawValue
                
                profileVC.yearsEducation = person[0].firstEducation.yearsExperience
                profileVC.universityEducation = person[0].firstEducation.name
                profileVC.cityEducation = person[0].firstEducation.city
                profileVC.positionEducation = person[0].firstEducation.position.rawValue
                
                profileVC.yearsExperience = person[0].experience.yearsExperience
                profileVC.companyExperience = person[0].experience.name
                profileVC.cityExperience = person[0].experience.city
                profileVC.positionExperience = person[0].experience.position.rawValue
            }
            
        }
    }

    // MARK: - IB Actions
    @IBAction func logInAction(_ sender: UIButton) {
        if authentification(usernameTF, passwordTF) == false  {
        showAlert(title: "Authentification failed",
                  message: "Incorrect username or password",
                  textField: passwordTF)
        }
    
    }
    @IBAction func userForgotAction(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Attention!", message: "Your login is \(person[0].user.login)")
        : showAlert(title: "Attention!", message: "You password is \(person[0].user.password)")
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = nil
        passwordTF.text = nil
    }
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        }
}

extension LoginViewController {
    private func authentification(_ login: UITextField, _ passwd: UITextField) -> Bool {
        guard let login = login.text, let passwd = passwd.text,
              login == person[0].user.login, passwd == person[0].user.password else {
            return false
        }
    return true
    }
}

extension LoginViewController {
    private func setGradient() -> Void {
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
