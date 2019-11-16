//
//  DifferentTypesOfStrokeViewController.swift
//  stroke app
//
//  Created by michael reed on 1/31/19.
//  Copyright © 2019 Cyberdev. All rights reserved.
//

import UIKit
import WebKit

class DifferentTypesOfStrokeViewController: UIViewController {

    
    
     @IBOutlet var video: WKWebView!
    
    @IBOutlet var scroll: UIScrollView!
    
    @IBOutlet var topView: UIView!
    
    
    @IBOutlet var strokeBasicsLabel: UILabel!
    @IBOutlet var ischemicStrokeLabel: UILabel!
    @IBOutlet var hemorrhagicStrokeLabel: UILabel!
    @IBOutlet var embolicStrokeLabel: UILabel!
    @IBOutlet var signsAndSymptomsLabel: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = UIColor.red
        scroll.backgroundColor = UIColor.red
        topView.backgroundColor = UIColor.red
        
        video.layer.cornerRadius = 10
        
        
        customizeNavBar()
        customizeLabels()
     
        
        getVideo(videoCode: "omqgYB1l1Do")
        
        
        
    }
    

    
    // Plays youtube video
    func getVideo (videoCode : String) {
        
         guard let url = URL(string : "https://www.youtube.com/embed/\(videoCode)") else {
           
            return
        }
        
        
        video.load(URLRequest(url : url))
    
        
    
    }
    
    
    
    
    // adds a shadow to the labels
    func customizeLabels () {
        
        labelShadow(label: strokeBasicsLabel)
        
        labelShadow(label: ischemicStrokeLabel)
        
        labelShadow(label: hemorrhagicStrokeLabel)
        
        labelShadow(label: embolicStrokeLabel)
        
        labelShadow(label: signsAndSymptomsLabel)
        
        
        
    }
    
    
    
    
    // Customizes the navigation controller, navigationItem, and the back button
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
        let backButton = item.backBarButtonItem
        backButton?.tintColor = UIColor.black
        
    }
    
    

}




extension DifferentTypesOfStrokeViewController {
    
    // adds a shadow to a label
    func labelShadow (label: UILabel) {
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 5, height: 5)
        label.layer.shadowRadius = 5
        label.layer.shadowOpacity = 0.75
    }
    
    
    
    
}
