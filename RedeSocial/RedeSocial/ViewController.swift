//
//  ViewController.swift
//  RedeSocial
//
//  Created by Jeferson Jesus on 17/07/19.
//  Copyright © 2019 Cubos. All rights reserved.
//

import UIKit
import NoticiasModule
import CommonModule

class ViewController: UIViewController {

    @IBAction func didTapNoticias() {
        guard let window = AppDelegate.sharedInstante.window else {return}
        NoticiasModuleRouter(window: window, delegate: self).start()
    }
    
}

extension ViewController: NoticiasModuleRouterDelegate {
    func noticiasModuleDidFinish() {
        showAlert(with: "Alert Using common module")
    }
}
