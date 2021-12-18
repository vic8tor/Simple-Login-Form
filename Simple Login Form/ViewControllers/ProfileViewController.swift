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
    
    @IBOutlet weak var yearsEducationLabel: UILabel!
    @IBOutlet weak var universityEducationLabel: UILabel!
    @IBOutlet weak var cityEducationLabel: UILabel!
    @IBOutlet weak var positionEducationLabel: UILabel!
    
    @IBOutlet weak var educationStackView: UIStackView!
    @IBOutlet weak var experienceStackView: UIStackView!
    @IBOutlet weak var portfolioStackView: UIStackView!
    
    @IBOutlet weak var yearsExperienceLabel: UILabel!
    @IBOutlet weak var companyExperienceLabel: UILabel!
    @IBOutlet weak var cityExperienceLabel: UILabel!
    @IBOutlet weak var positionExperienceLabel: UILabel!
    
    //MARK: - Public Proporeties
    var fullname: String!
    var professionInHead: String!
    var cityInHead: String!
    
    var yearsEducation: String!
    var universityEducation: String!
    var cityEducation: String!
    var positionEducation: String!
    
    var yearsExperience: String!
    var companyExperience: String!
    var cityExperience: String!
    var positionExperience: String!

    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        grafient()
        
        fullnameLabel.text = fullname ?? ""
        cityInHeaderLabel.text = cityInHead ?? ""
        professionInHeaderLabel.text = professionInHead ?? ""
        yearsEducationLabel.text = yearsEducation ?? ""
        universityEducationLabel.text = universityEducation ?? ""
        cityEducationLabel.text = cityEducation ?? ""
        positionEducationLabel.text = positionEducation ?? ""
        
        yearsExperienceLabel.text = yearsExperience ?? ""
        companyExperienceLabel.text = companyExperience ?? ""
        cityExperienceLabel.text = cityExperience ?? ""
        positionExperienceLabel.text = positionExperience ?? ""
        
        experienceStackView.isHidden = true
        educationStackView.isHidden = false
        portfolioStackView.isHidden = true
        
    }

    @IBAction func changeSegmentControlActions(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            educationStackView.isHidden = false
            experienceStackView.isHidden = true
            portfolioStackView.isHidden = true
        case 1:
            educationStackView.isHidden = true
            experienceStackView.isHidden = false
            portfolioStackView.isHidden = true
        default:
            educationStackView.isHidden = true
            experienceStackView.isHidden = true
            portfolioStackView.isHidden = false
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
