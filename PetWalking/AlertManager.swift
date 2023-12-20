//
//  AlertManager.swift
//  PetWalking
//
//  Created by Muslim on 20.12.2023.
//

import UIKit

class AlertManager {
    private static func showBasicAlert(vc: UIViewController, title: String, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default))
            vc.present(alert, animated: true)
        }
    }
}

// MARK: - Validation Alerts
extension AlertManager {
    public static func showInvalidEmailAlert(vc: UIViewController) {
        self.showBasicAlert(vc: vc, title: "Invalid E-mail address", message: "Please enter a valid e-mail address")
    }
    
    public static func showInvalidPasswordAlert(vc: UIViewController) {
        self.showBasicAlert(vc: vc, title: "Invalid Password address", message: "Please enter a valid password")
    }
}

// MARK: - Registration Alerts
extension AlertManager {
    public static func showRegistrationErrorAlert(vc: UIViewController) {
        self.showBasicAlert(vc: vc, title: "Unknown Registration Error", message: nil)
    }
    
    public static func showRegistrationErrorAlert(vc: UIViewController, error: Error) {
        self.showBasicAlert(vc: vc, title: "Unknown Registration Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - SignIn Alerts
extension AlertManager {
    public static func showSignInErrorAlert(vc: UIViewController) {
        self.showBasicAlert(vc: vc, title: "Unknown Error Signing In", message: nil)
    }
    
    public static func showSignInErrorAlert(vc: UIViewController, error: Error) {
        self.showBasicAlert(vc: vc, title: "Error Signing In", message: "\(error.localizedDescription)")
    }
}

// MARK: - Logout Alerts
extension AlertManager {
    public static func showLogoutErrorAlert(vc: UIViewController, error: Error) {
        self.showBasicAlert(vc: vc, title: "Log Out Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Forgot Password
extension AlertManager {
    public static func showPasswordResetSent(vc: UIViewController) {
        self.showBasicAlert(vc: vc, title: "Password Reset Sent", message: nil)
    }
    
    public static func showErrorSendingPasswordReset(vc: UIViewController, error: Error) {
        self.showBasicAlert(vc: vc, title: "Error Sending Password Reset", message: "\(error.localizedDescription)")
    }
}

// MARK: - Fetching User Errors
extension AlertManager {
    public static func showUnknownFetchingUserError(vc: UIViewController) {
        self.showBasicAlert(vc: vc, title: "Unknown User Fetching Error", message: nil)
    }
    
    public static func showFetchingUserError(vc: UIViewController, error: Error) {
        self.showBasicAlert(vc: vc, title: "Error Fetching User", message: "\(error.localizedDescription)")
    }
}
