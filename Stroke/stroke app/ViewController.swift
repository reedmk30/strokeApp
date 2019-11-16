//
//  ViewController.swift
//  stroke app
//
//  Created by michael reed on 1/28/19.
//  Copyright © 2018 Cyberdev. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var leftClockImageView: UIImageView!
    @IBOutlet var rightClockImageView: UIImageView!
    
    
    @IBOutlet var emergencyButtonOutlet: UIButton!
    
    
    @IBOutlet var actFastLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.backgroundColor = UIColor.red
        
        
        self.leftClockImageView.layer.cornerRadius = 5
        self.rightClockImageView.layer.cornerRadius = 5
        
        
        self.emergencyButtonOutlet.layer.cornerRadius = 10
        buttonShadow(button: emergencyButtonOutlet)
        
        
       labelShadow(label: actFastLabel)
        
       labelShadow(label: timeLabel)
        
        
        customizeNavBar()
        customizeTabs()
        
        
    
    }

   
    
    
    
    
    // Calls 911 when the button is pressed
    @IBAction func emergencyButton(_ sender: Any) {
    
        let emergencyNumber = 911
        
        guard let url = URL(string: "telprompt://\(emergencyNumber)") else {
            return
        }
  
    UIApplication.shared.open(url)
    
    }
    
    
    
    
    // Customizes the navigationController and the navigationItem
    func customizeNavBar () {
        
        
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
        item.title = "Stroke Saver"
        bar.isTranslucent = true
        
        
    }
    
    
    
    
    // Customizes the individual tabs
    func customizeTabs () {
        
        
        let tabFont = UIFont(name: "Symbol", size: 17)
        if let edditedTabBar = self.tabBarController?.tabBar.items {
            edditedTabBar[0].title = "Home"
            edditedTabBar[1].title = "Types"
            edditedTabBar[2].title = "Risks"
            edditedTabBar[3].title = "FAST"
            edditedTabBar[4].title = "Quiz"
            
            edditedTabBar[0].setTitleTextAttributes([NSAttributedString.Key.font: tabFont!], for: .normal)
            edditedTabBar[1].setTitleTextAttributes([NSAttributedString.Key.font: tabFont!], for: .normal )
            edditedTabBar[2].setTitleTextAttributes([NSAttributedString.Key.font: tabFont!], for: .normal )
            edditedTabBar[3].setTitleTextAttributes([NSAttributedString.Key.font: tabFont!], for: .normal )
            edditedTabBar[4].setTitleTextAttributes([NSAttributedString.Key.font: tabFont!], for: .normal )
            
        }
        
        
    }
    
    
    
    
    
}





extension ViewController {
    
    // adds shadow to button
    func buttonShadow (button: UIButton) {
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.75
        
        
    }
    
    
    // adds shadow to label
    func labelShadow (label: UILabel) {
        
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 5, height: 5)
        label.layer.shadowRadius = 5
        label.layer.shadowOpacity = 0.75
        
    }
    
 
    
    
}
