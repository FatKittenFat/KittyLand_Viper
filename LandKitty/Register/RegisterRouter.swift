//
//  RegisterRouter.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

class RegisterRouter{
    var navigation: UINavigationController?
    
}

extension RegisterRouter: RegisterRouterProtocol{
    func showSuccess(){
        let alertSuccess = UIAlertController(title: "Registro Exitoso", message: "Se ha registrado correctamente", preferredStyle: .alert)
        let actionSuccess = UIAlertAction(title: "Aceptar", style: .default)
        alertSuccess.addAction(actionSuccess)
        self.navigation?.present(alertSuccess, animated: true, completion: nil)
    }
    func showEmpty(){
        let alertDismiss = UIAlertController(title: "Error", message: "Favor de ingresar los datos correctamente", preferredStyle: .alert)
        let actionDismiss = UIAlertAction(title: "Regresar", style: .default)
        alertDismiss.addAction(actionDismiss)
        self.navigation?.present(alertDismiss, animated: true, completion: nil)
    }
}
