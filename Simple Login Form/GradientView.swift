//
//  GradientView.swift
//  Simple Login Form
//
//  Created by Victor on 14.12.2021.
//

import Foundation
import UIKit


class GradientView: UIView {
    private let gradientLayer = CAGradientLayer()
    override init(frame: CGRect) {
        super.init(frame:frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    private func setupGradient() {
        self.layer.addSublayer(gradientLayer)
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
    }
}
