//
//  BasicsOfStrokeViewController.swift
//  stroke app
//
//  Created by michael reed on 1/31/19.
//  Copyright © 2019 Cyberdev. All rights reserved.
//

import UIKit

class BasicsOfStrokeViewController: UIViewController {

    
    
    @IBOutlet var descriptionLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        descriptionLabel.textColor = UIColor.white
        
        
        // Customizes the navigationController and the navigationItem
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
        item.title = "Stroke Basics"
        
        
        
        
        
        
        
        
        
        
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
