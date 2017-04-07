//
//  LoginProtocols.swift
//  AssetTracking
//
//  Created Padalingam A on 4/6/17.
//  Copyright © 2017 Padalingam A. All rights reserved.

import Foundation
import UIKit

//MARK: Wireframe -
protocol LoginWireframeProtocol: class {
    static func createLoginModule() -> UIViewController
    func showHomeScreen(viewController: LoginViewProtocol)
}
//MARK: Presenter -
protocol LoginPresenterProtocol: class {
    func loginValidation(userName: String, password: String) throws -> LoginError
    func showHomeScreen()
}

//MARK: Interactor -
protocol LoginInteractorProtocol: class {

  var presenter: LoginPresenterProtocol?  { get set }
  func loginValidation(userName: String, password: String) throws -> LoginError
}

//MARK: View -
protocol LoginViewProtocol: class {

  var presenter: LoginPresenterProtocol?  { get set }
}
