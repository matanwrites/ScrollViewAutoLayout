//
//  IntroCard.swift
//  ScrollViewAutolayout
//
//  Created by sintaiyuan on 9/12/17.
//  Copyright © 2017 taiyungo. All rights reserved.
//

import UIKit

class IntroCard : UITextView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = UIColor.white
        layer.cornerRadius = 6.0
        clipsToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        sizeToFit()
    }
}
