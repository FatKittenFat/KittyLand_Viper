//
//  RegisterMain.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

open class RegisterMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: RegisterView? = RegisterView()
        if let view = viewController {
            let presenter = RegisterPresenter()
            let router = RegisterRouter()
            let interactor = RegisterInteractor()
            
            
             view.presenter = presenter
             
             presenter.view = view
             presenter.interactor = interactor
             presenter.router = router
             
             router.navigation = navigation
             
             interactor.presenter = presenter
            return view
        }
        return UIViewController()
    }
    
    
}
