//
//  LoginView.swift
//  AssetTracking
//
//  Created by Padalingam A on 4/6/17.
//  Copyright © 2017 Padalingam A. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class LoginView: UIView {
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}

@IBDesignable class LoginButton: UIButton {
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}

enum LoginError: Error {
    case success
    case failure(message: String)
}
