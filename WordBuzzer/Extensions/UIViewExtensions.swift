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
}
