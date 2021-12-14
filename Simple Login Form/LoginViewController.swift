//
//  LoginViewController.swift
//  Simple Login Form
//
//  Created by Victor on 14.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var greeting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    
    @IBAction func logOut() {
        dismiss(animated: true)
    }

}
