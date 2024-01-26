//
//  RegisterView.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

class RegisterView: UIViewController {
    var presenter: RegisterPresenterProtocol?
    private var ui: RegisterViewUI?
    
    
    override func loadView() {
        ui = RegisterViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
    
}

extension RegisterView: RegisterViewProtocol {
    
}

extension RegisterView: RegisterViewUIDelegate {
    func notifyRegisterUser(newUser: String, newPass: String) {
        presenter?.registerNewUser(newUser: newUser, newPass: newPass)
    }
    
    
}
