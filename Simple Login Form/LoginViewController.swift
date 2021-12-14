//
//  LoginViewController.swift
//  Simple Login Form
//
//  Created by Victor on 14.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var greeting: UILabel!
    var greetingUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    greeting.text = greetingUser
    
    }


    
    
    @IBAction func logOut() {
        dismiss(animated: true)
    }

}
