//
//  LoginViewController.swift
//  AssetTracking
//
//  Created Padalingam A on 4/6/17.
//  Copyright © 2017 Padalingam A. All rights reserved.

import UIKit

class LoginViewController: UIViewController, LoginViewProtocol {

	var presenter: LoginPresenterProtocol?

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!

	override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func loginAction(_ sender: LoginButton) {
        do {
        _ = try presenter?.loginValidation(userName: userName.text!, password: password.text!)
        } catch let error {
            guard let loginError = error as? LoginError else {
                return
            }
            switch loginError {
            case .failure(let message):
                let actionSheetController: UIAlertController = UIAlertController(title: "Login Error", message: message, preferredStyle: .alert)
                let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
                    //Just dismiss the action
                }
                actionSheetController.addAction(cancelAction)
                self.present(actionSheetController, animated: true, completion: nil)
            default:
                print("No error")
            }
        }
        
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -100, up: false)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -100, up: true)
    }
    
    func moveTextField(textField: UITextField, moveDistance: Int, up: Bool) {
        let moveDuration = 0.3
        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        UIView.beginAnimations("animateTextfield", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
    }
}
