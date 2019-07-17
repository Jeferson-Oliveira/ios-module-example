//
//  NoticiasModuleDelegate.swift
//  NoticiasModule
//
//  Created by Jeferson Jesus on 17/07/19.
//  Copyright © 2019 Cubos. All rights reserved.
//

import UIKit

public protocol NoticiasModuleRouterDelegate {
    func noticiasModuleDidFinish()
}

public class NoticiasModuleRouter {
    
    public static var sharedInstance: NoticiasModuleRouter!
    
    private var window: UIWindow
    private var delegate: NoticiasModuleRouterDelegate
    
    public init(window: UIWindow, delegate: NoticiasModuleRouterDelegate) {
        self.window = window
        self.delegate = delegate
        NoticiasModuleRouter.sharedInstance = self
    }
    
    public func start() {
        if let navigationController = window.rootViewController as? UINavigationController {
            navigationController.pushViewController(NoticasHomeViewController(), animated: true)
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
        } else if let rootController = window.rootViewController {
            rootController.navigationController?.pushViewController(NoticasHomeViewController(), animated: true)
            window.makeKeyAndVisible()
        }
    }
    
    func finishModule() {
        delegate.noticiasModuleDidFinish()
    }
}
