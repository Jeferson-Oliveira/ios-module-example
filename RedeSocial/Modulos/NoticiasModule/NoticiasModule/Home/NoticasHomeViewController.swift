//
//  NoticasHomeViewController.swift
//  NoticiasModule
//
//  Created by Jeferson Jesus on 17/07/19.
//  Copyright © 2019 Cubos. All rights reserved.
//

import UIKit
import SnapKit


class NoticasHomeViewController: UIViewController {

    private var mainView = NoticiasHomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func loadView() {
        super.loadView()
        view.addSubview(mainView)
        title = "Noticias"
        mainView.button.addTarget(self, action: #selector(self.tapToBack), for: .touchUpInside)
    }
    
    @objc func tapToBack() {
        self.navigationController?.popViewController(animated: true)
        NoticiasModuleRouter.sharedInstance.finishModule()
    }
}
