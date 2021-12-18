//
//  MyPageViewController.swift
//  Simple Login Form
//
//  Created by Victor on 17.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var professionInHeaderLabel: UILabel!
    @IBOutlet weak var cityInHeaderLabel: UILabel!
    
    @IBOutlet weak var educationStackView: UIStackView!
    @IBOutlet weak var experienceStackView: UIStackView!
    
    //MARK: - Public Proporeties
    var fullname: String!
    var professionInHead: String!
    var cityInHead: String!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        grafient()
        
        experienceStackView.isHidden = true
        educationStackView.isHidden = false
        
    }

    @IBAction func changeSegmentControlActions(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            experienceStackView.isHidden = true
            educationStackView.isHidden = false
        case 1:
            experienceStackView.isHidden = false
            educationStackView.isHidden = true
        default:
            experienceStackView.isHidden = true
            educationStackView.isHidden = true
        }
        
    }
}


extension ProfileViewController {
    private func grafient() -> Void {
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
