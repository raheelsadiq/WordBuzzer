//
//  UISubClasses.swift
//  WordBuzzer
//
//  Created by Raheel Sadiq  on 09/02/2020.
//  Copyright © 2020 Raheel Sadiq . All rights reserved.
//

import UIKit

class PlayerButton: UIButton {
    
    enum GameState {
        case won
        case normal
        case lost
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setRoundedFull()
        titleLabel?.font = UIFont.init(name: "Avenir", size: 18)
        titleLabel?.numberOfLines = 2
        titleLabel?.textAlignment = .center
        setBackgroundImage(UIColor.General.LightGrayColor.image(), for: .normal)
        setBorder(UIColor.General.LightGrayColor.withAlphaComponent(0.7), width: 5)
        


        setBackgroundImage(UIColor.General.GoldColor.image(), for: .selected)
        setBackgroundImage(UIColor.General.RedColor.image(), for: .application)
    }
    
    var gameState: GameState = .normal {
        didSet{
            switch gameState {
            case .normal:
                setBackgroundImage(UIColor.General.BlueColor.image(), for: .normal)
            case .won:
                setBackgroundImage(UIColor.General.GoldColor.image(), for: .normal)
            case .lost:
                setBackgroundImage(UIColor.General.RedColor.image(), for: .normal)
            }
        }
        
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
        titleLabel?.numberOfLines = 2
    }
}

class WordLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setRoundedCorner(radius: 4)
    }
    override func drawText(in rect: CGRect) {
        let insets: UIEdgeInsets = UIEdgeInsets(top: 0.0, left: 12.0, bottom: 0.0, right: 12.0)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + 12 + 12,
                      height: size.height)
    }
}
 
