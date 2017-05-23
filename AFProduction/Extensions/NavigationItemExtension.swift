//
//  NavigationItemExtension.swift
//  AFProduction
//
//  Created by Admin on 23.05.17.
//  Copyright © 2017 ASCompany. All rights reserved.
//

import UIKit

extension UINavigationItem
{
    func addSettingButtonOnRight()
    {
        let button = UIButton(type: .custom)
        //button.setTitle("setting", for: .normal)
        //button.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
        button.setImage(UIImage(named: "settings"), for: .normal)
        //button.layer.cornerRadius = 5
        //button.backgroundColor = UIColor.gray
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        button.addTarget(self, action: #selector(gotSettingPage), for: UIControlEvents.touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        
        self.rightBarButtonItem = barButton
    }
    
    func addLogoAtLeftButton()
    {
        let logo = UIBarButtonItem(image: UIImage (named: "contactsImage"), style: UIBarButtonItemStyle.plain, target: self, action: nil)
        logo.isEnabled = false;
        self.leftBarButtonItem = logo
    }
    
    func gotSettingPage(){
        
    }
}
