//
//  MyPageViewController.swift
//  Simple Login Form
//
//  Created by Victor on 17.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var carerObjectiveLabel: UILabel!
    @IBOutlet weak var cityOfResidenceLabel: UILabel!
    
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
    
//    var workHiddenSegmentCotrol: Bool!
//    var educationHiddenSegmentCotrol: Bool!
//    var portfolioHiddenSegmentCotrol: Bool!
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient()
        
        fullnameLabel.text = fullname ?? ""
        cityOfResidenceLabel.text = cityInHead ?? ""
        carerObjectiveLabel.text = professionInHead ?? ""
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

//        guard let hideAboutSegment = workHiddenSegmentCotrol else { return }
//        segmentControl.setEnabled(hideAboutSegment, forSegmentAt: 1)
    }
    
    // MARK: - IB Actions
    @IBAction func changeSegmentControlActions() {
        switch segmentControl.selectedSegmentIndex {
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

// MARK: - Private Methods
extension ProfileViewController {
    private func gradient() -> Void {
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
