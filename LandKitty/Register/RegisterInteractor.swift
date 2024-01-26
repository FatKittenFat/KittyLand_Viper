//
//  RegisterInteractor.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import FirebaseAuth

class RegisterInteractor{
    var presenter: RegisterPresenterProtocol?
    var user: RegisterViewUI?
    
    
    
}

extension RegisterInteractor: RegisterInteractorProtocol {
    func postRegisterUser(newUser: String, newPass: String){
        if newUser.isEmpty, newPass.isEmpty {
            self.presenter?.registerFail()
            print("Error >  Campos vacios")
        } else {
            Auth.auth().createUser(withEmail: newUser, password: newPass) { AuthDataResult, error in
                if let e = error {
                    
                    print("Error: ", e)
                } else {
                    self.presenter?.registerSucess()
                    print("Registro finalizado!")
                }
            }
            
        }
    }
}

