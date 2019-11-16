//
//  RiskFactorsViewController.swift
//  stroke app
//
//  Created by michael reed on 1/29/19.
//  Copyright © 2019 Cyberdev. All rights reserved.
//

import UIKit

class RiskFactorsViewController: UIViewController {

    
    
    @IBOutlet var viewHoldingDescriptionLabel: UIView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var highBloodPresureLabel: UILabel!
    @IBOutlet var smokingLabel: UILabel!
    @IBOutlet var alcoholLabel: UILabel!
    @IBOutlet var substanceAbuseLabel: UILabel!
    @IBOutlet var cholesterolLabel: UILabel!
    @IBOutlet var diabetesLabel: UILabel!
    
    
    
    
    
    
    @IBOutlet var highBloodPressureImage: UIImageView!
    @IBOutlet var smokingImage: UIImageView!
    @IBOutlet var alcoholImage: UIImageView!
    @IBOutlet var substanceAbuseImage: UIImageView!
    @IBOutlet var cholesterolImage: UIImageView!
    @IBOutlet var diabetesImage: UIImageView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = UIColor.red
        viewHoldingDescriptionLabel.backgroundColor = UIColor.red
        
        
        customizeLabels()
        
        customizeImages()
        
        customNavBar()
        
    }
    

    
    
    
    
    
    // sets the lables color to white and adds a shadow
    func customizeLabels () {
        
        labelColor(label: titleLabel)
        labelColor(label: highBloodPresureLabel)
        labelColor(label: smokingLabel)
        labelColor(label: alcoholLabel)
        labelColor(label: substanceAbuseLabel)
        labelColor(label: cholesterolLabel)
        labelColor(label: diabetesLabel)
        
        
        shadow(label: titleLabel)
        shadow(label: highBloodPresureLabel)
        shadow(label: smokingLabel)
        shadow(label: alcoholLabel)
        shadow(label: substanceAbuseLabel)
        shadow(label: cholesterolLabel)
        shadow(label: diabetesLabel)
        
        
        
    }
    
    
    
    
    
    // adds a corner radius to the images
    func customizeImages () {
        
        self.highBloodPressureImage.layer.cornerRadius = 10
        self.smokingImage.layer.cornerRadius = 10
        self.alcoholImage.layer.cornerRadius = 10
        self.substanceAbuseImage.layer.cornerRadius = 10
        self.cholesterolImage.layer.cornerRadius = 10
        self.diabetesImage.layer.cornerRadius = 10
        
        
        
        
    }
    
    
    
    // Customizes the navigationController and the navigationItem
    func customNavBar () {
        
        
        let nav = navigationController!
        nav.hidesBarsOnSwipe = false
        let bar = nav.navigationBar
        bar.tintColor = UIColor.white
        let titlefont = UIFont(name: "Symbol", size: 30)
        let color = UIColor.black
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.gray
        shadow.shadowOffset = CGSize(width: 1.5, height: 1.5)
        let attributes = [NSAttributedString.Key.font: titlefont! , NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.shadow: shadow]
        bar.titleTextAttributes = attributes
        let item = navigationItem
        item.title = "Risk Factors"
        
        
        
    }
    
    

}





extension RiskFactorsViewController {
    
    // adds a shadow
    func shadow (label: UILabel) {
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 5, height: 5)
        label.layer.shadowRadius = 5
        label.layer.shadowOpacity = 0.75
    }
    
    
    // sets color of label
    func labelColor (label: UILabel) {
        label.textColor = UIColor.white
    }
    
    
}
