//
//  RegisterPresenter.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
class RegisterPresenter {
    var interactor: RegisterInteractorProtocol?
    weak var view: RegisterViewProtocol?
    var router: RegisterRouterProtocol?
    
}



extension RegisterPresenter: RegisterPresenterProtocol {
    func registerNewUser(newUser: String, newPass: String){
        // se va al interactor
        interactor?.postRegisterUser(newUser: newUser, newPass: newPass)
    }
    
    func registerSucess(){
        router?.showSuccess()
        // va al router para el sucess
    }
    
    func registerFail() {
        router?.showDismiss()
    }
    
    
}
