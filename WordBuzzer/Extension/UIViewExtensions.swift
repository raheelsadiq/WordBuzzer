//
//  UIViewExtensions.swift
//  WordBuzzer
//
//  Created by Raheel Sadiq  on 09/02/2020.
//  Copyright © 2020 Raheel Sadiq . All rights reserved.
//

import UIKit

extension UIView {
    
    func setRoundedFull() {
        self.layer.cornerRadius = self.frame.size.width/2;
        self.clipsToBounds = true;
    }
    
    func setRoundedCorner(radius value:CGFloat) {
        self.layer.cornerRadius = value
        self.clipsToBounds = true
    }
    
    func setBorder(_ color:UIColor, width:CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
        self.clipsToBounds = true
    }
    
    func showWithAnimation() {
        
        guard isHidden else { return }
        
        self.alpha = 0;
        self.isHidden = false
        UIView.animate(withDuration: 0.2, animations: { () -> Void in
            self.alpha = 1
        })
    }
    
    func hideWithAnimation() {
        
        guard !isHidden else { return }

        UIView.animate(withDuration: 0.2, animations: { () -> Void in
            self.alpha = 0
        }, completion: { (finish) -> Void in
            if finish {
                self.isHidden = true
                self.alpha = 1
            }
        })
    }
    
}

// MARK: - Color

extension UIColor {
    
    class func randomColor () -> UIColor{
        
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:randomRed, green:randomGreen, blue:randomBlue, alpha:1.0)
    }
    
    convenience init(r: CGFloat, g:CGFloat , b:CGFloat , a: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha:a)
    }
        
    func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
    
    struct General {
        static let BlueColor: UIColor = UIColor(r: 1, g: 177, b: 242, a: 1)
        static let GreenColor: UIColor = UIColor(r: 25, g: 174, b: 68, a: 1)
        static let YellowColor: UIColor = UIColor(r: 255, g: 251, b: 213, a: 1)
        static let RedColor: UIColor = UIColor(r: 255, g: 59, b: 48, a: 1)
        
        static let GrayColor: UIColor = UIColor(r: 40, g: 46, b: 57, a: 1)
        static let PurpleColor: UIColor = UIColor(r: 141, g: 119, b: 173, a: 1)
        static let LightPurpleColor: UIColor = UIColor(r: 157, g: 142, b: 183, a: 1)
        
        static let OrangeColor: UIColor = UIColor(r: 255, g: 121, b: 62, a: 1)
        static let OrangeColorTint: UIColor = UIColor(r: 223, g: 133, b: 85, a: 1)
        
        static let DarkGreenColor: UIColor = UIColor(r: 26, g: 37, b: 45, a: 1)
        static let TurqoiseColor: UIColor = UIColor(r: 23, g: 182, b: 196, a: 1)
        
        static let GreyColor: UIColor = UIColor(r: 141, g: 141, b: 141, a: 1)
        static let GoldColor: UIColor = UIColor(r: 250, g: 160, b: 37, a: 1)
        static let SteelBlue: UIColor = UIColor(r: 70, g: 130, b: 180, a: 1)

        static let DarkGrayColor: UIColor = UIColor(r: 73, g: 73, b: 73, a: 1)
        static let LightGrayColor: UIColor = UIColor(r: 200, g: 200, b: 200, a: 1)
        static let OffWhite: UIColor = UIColor(r: 245, g: 245, b: 245, a: 1)
        
        static let NavyBlue: UIColor = UIColor(r: 22, g: 22, b: 41, a: 1)
    }
}

extension Array where Element == Game.Word {
    
    func getRandomOptions(count: Int) -> [Game.Word]{
        return[]
    }
    
    func choose(_ n: Int) -> ArraySlice<Game.Word> {
        shuffled().prefix(n)
    }
}
