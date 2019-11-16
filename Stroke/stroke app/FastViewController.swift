//
//  FastViewController.swift
//  stroke app
//
//  Created by michael reed on 1/29/19.
//  Copyright © 2019 Cyberdev. All rights reserved.
//

import UIKit

class FastViewController: UIViewController {

    
   
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var faceLabel: UILabel!
    @IBOutlet var armsLabel: UILabel!
    @IBOutlet var speechLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
    
    
    
    @IBOutlet var droopyImageView: UIImageView!
    @IBOutlet var armImageView: UIImageView!
    @IBOutlet var speechImageView: UIImageView!
    @IBOutlet var timeImageView: UIImageView!
    
    
    
    @IBOutlet var scroll: UIScrollView!
    
    @IBOutlet var topView: UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        scroll.backgroundColor = UIColor.red
        topView.backgroundColor = UIColor.red
        
        
        
        self.droopyImageView.layer.cornerRadius = 10
        self.armImageView.layer.cornerRadius = 10
        self.speechImageView.layer.cornerRadius = 10
        self.timeImageView.layer.cornerRadius = 10
        
       
        customizeLabels()
        
        
        customNavBar()
        
        
        
        
    }
    

    
    
    
    
    // adds a shadow to the labels
    func customizeLabels () {
        
        labelShadow(label: titleLabel)
        labelColor(label: titleLabel)
        
        
        labelShadow(label: faceLabel)
        labelColor(label: faceLabel)
        
        
        labelShadow(label: armsLabel)
        labelColor(label: armsLabel)
        
        
        labelShadow(label: speechLabel)
        labelColor(label: speechLabel)
        
        labelShadow(label: timeLabel)
        labelColor(label: timeLabel)
        
        
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
        item.title = "F.A.S.T"
        
        
        
    }
    

}




extension FastViewController {
    
    // adds shadow to label
    func labelShadow (label: UILabel) {
        
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 5, height: 5)
        label.layer.shadowRadius = 5
        label.layer.shadowOpacity = 0.75
        
    }
    
    
    // sets labels text color
    func labelColor (label: UILabel) {
        label.textColor = UIColor.white
    }
    
    
    
    
}
