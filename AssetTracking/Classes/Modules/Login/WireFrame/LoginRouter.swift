//
//  LoginRouter.swift
//  AssetTracking
//
//  Created Padalingam A on 4/6/17.
//  Copyright © 2017 Padalingam A. All rights reserved.

import UIKit

class LoginRouter: LoginWireframeProtocol {

    static func createLoginModule() -> UIViewController {
       let loginViewController = mainStoryboard.instantiateViewController(withIdentifier: StoryBoardIdentifier.LoginViewController.rawValue) as! LoginViewController
       let interactor = LoginInteractor()
       let presenter = LoginPresenter(interface: loginViewController, interactor: interactor, router: LoginRouter())
        interactor.presenter = presenter
        loginViewController.presenter = presenter
       return loginViewController
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }

    func showHomeScreen(viewController: LoginViewProtocol) {
        let homeViewController = HomeRouter.createHomeModule()
        if let loginController = viewController as? LoginViewController {
            loginController.present(homeViewController, animated: true, completion: nil)
        }
    }
}
