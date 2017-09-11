//
//  GreenViewController.swift
//  ScrollViewAutolayout
//
//  Created by sintaiyuan on 7/31/17.
//  Copyright © 2017 taiyungo. All rights reserved.
//

import UIKit

class GreenViewController : UIViewController {
    override func willMove(toParentViewController parent: UIViewController?) {
        super.willMove(toParentViewController: parent)
        
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
