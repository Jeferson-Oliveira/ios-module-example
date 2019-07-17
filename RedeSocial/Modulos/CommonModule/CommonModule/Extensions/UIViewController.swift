//
//  UIViewController.swift
//  CommonModule
//
//  Created by Jeferson Jesus on 17/07/19.
//  Copyright © 2019 Cubos. All rights reserved.
//

import UIKit
import PopupDialog

extension UIViewController {
    
    public func showAlert(with message: String) {
        if !message.isEmpty {
            let popup = PopupDialog(title: "Aviso", message: message)
            self.present(popup, animated: true, completion: nil)
        }
    }
}


