//
//  ViewController.swift
//  ScrollViewAutolayout
//
//  Created by sintaiyuan on 7/31/17.
//  Copyright © 2017 taiyungo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var redViewController   : RedViewController!
    var greenViewController : GreenViewController!
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueName = segue.identifier else { return }
        
        switch segueName {
        case "TopContainerSegue", "LeftContainerSegue":
            redViewController = segue.destination as! RedViewController
        case "BottomContainerSegue", "RightContainerSegue":
            greenViewController = segue.destination as! GreenViewController
        default: fatalError()
        }
    }
    
    //IB will try to segue the 4 segue no matter the size class so we need to tell it what we want
    public override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if traitCollection.horizontalSizeClass == .compact && ["BottomContainerSegue", "TopContainerSegue"].contains(identifier) {
            return true
        } else if traitCollection.horizontalSizeClass == .regular && ["LeftContainerSegue", "RightContainerSegue"].contains(identifier) {
            return true
        } else {
            return false
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

