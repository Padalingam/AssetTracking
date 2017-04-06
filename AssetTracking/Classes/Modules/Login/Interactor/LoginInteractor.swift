//
//  LoginInteractor.swift
//  AssetTracking
//
//  Created Padalingam A on 4/6/17.
//  Copyright © 2017 Padalingam A. All rights reserved.

import UIKit

class LoginInteractor: LoginInteractorProtocol {

    weak var presenter: LoginPresenterProtocol?
    
    func loginValidation(userName: String, password: String) throws -> LoginError {
        let result = try loginChecking(userName: userName, password: password)
        return result
    }

    private func loginChecking(userName: String, password: String) throws -> LoginError {
        if userName.isEmpty && password.isEmpty {
            throw LoginError.failure(message: "UserName and Password is empty")
        } else if userName.isEmpty {
            throw LoginError.failure(message: "UserName is empty")
        } else if password.isEmpty {
            throw LoginError.failure(message: "Password is empty")
        } else {
            return LoginError.success
        }
    }
}
