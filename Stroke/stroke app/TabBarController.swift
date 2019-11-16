//
//  TabBarController.swift
//  stroke app
//
//  Created by michael reed on 1/31/19.
//  Copyright © 2019 Cyberdev. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController{

    
    

    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bar = tabBar
        bar.barTintColor = UIColor.white
        bar.tintColor = UIColor.red
        bar.unselectedItemTintColor = UIColor.black
        
        
       
        
        
       
        
     
       
    }
  
    
    
    
    
    
    
    
    
    

}
