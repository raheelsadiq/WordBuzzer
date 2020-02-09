//
//  UISubClasses.swift
//  WordBuzzer
//
//  Created by Raheel Sadiq  on 09/02/2020.
//  Copyright © 2020 Raheel Sadiq . All rights reserved.
//

import UIKit

class PlayerButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setRoundedFull()
        titleLabel?.font = UIFont.init(name: "Avenir", size: 18)
        setBackgroundImage(UIColor.General.LightGrayColor.image(), for: .normal)
        setBackgroundImage(UIColor.General.BlueColor.image(), for: .highlighted)
        setBorder(UIColor.General.LightGrayColor.withAlphaComponent(0.7), width: 5)
    }
}
 

class StartGameButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setRoundedFull()
        titleLabel?.font = UIFont.init(name: "Avenir", size: 18)
        setBackgroundImage(UIColor.General.LightGrayColor.image(), for: .normal)
        setBackgroundImage(UIColor.General.DarkGrayColor.image(), for: .highlighted)
        setBorder(UIColor.General.LightGrayColor.withAlphaComponent(0.7), width: 5)
    }
}
 
