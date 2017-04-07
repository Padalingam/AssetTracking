//
//  LoginPresenter.swift
//  AssetTracking
//
//  Created Padalingam A on 4/6/17.
//  Copyright © 2017 Padalingam A. All rights reserved.

import UIKit

class LoginPresenter: LoginPresenterProtocol {

    weak private var view: LoginViewProtocol?
    private let interactor: LoginInteractorProtocol
    private let router: LoginWireframeProtocol

    init(interface: LoginViewProtocol, interactor: LoginInteractorProtocol, router: LoginWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
        self.interactor.presenter = self
    }

    func loginValidation(userName: String, password: String) throws -> LoginError {
       let result = try interactor.loginValidation(userName: userName, password: password)
       return result
    }
    
    func showHomeScreen() {
        router.showHomeScreen(viewController: view!)
    }
}
