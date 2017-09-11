//
//  RedViewController.swift
//  ScrollViewAutolayout
//
//  Created by sintaiyuan on 7/31/17.
//  Copyright © 2017 taiyungo. All rights reserved.
//

import UIKit

class RedViewController : UIViewController {
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var profileBackground: UIImageView!
    @IBOutlet weak var introText: UITextView!
    
    override func willMove(toParentViewController parent: UIViewController?) {
        super.willMove(toParentViewController: parent)
        
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileBackground.image = avatar.image        
        introText.cardStyle()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        profileBackground.blur()
    }
}

extension UIImageView {
    func blur() {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = bounds
        addSubview(blurredEffectView)
    }
}

extension UIView {
    func cardStyle() {
        backgroundColor = UIColor.white
        layer.cornerRadius = 8.0
        clipsToBounds = true
    }
}
