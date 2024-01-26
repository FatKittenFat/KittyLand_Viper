//
//  RegisterProtocols.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
protocol RegisterViewProtocol: class {
    
}

protocol RegisterInteractorProtocol: class {
    func postRegisterUser(newUser: String, newPass: String)
}

protocol RegisterPresenterProtocol: class {
    func registerNewUser(newUser: String, newPass: String)
    func registerSucess()
    func registerFail()
    
}

protocol RegisterRouterProtocol: class {
    func showSuccess()
    func showEmpty()
    func showError()
}
