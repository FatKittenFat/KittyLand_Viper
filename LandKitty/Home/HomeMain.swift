//
//  HomeMain.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

open class HomeMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: HomeView? = HomeView()
        if let view = viewController {
            let presenter = HomePresenter()
            let router = HomeRouter()
            let interactor = HomeInteractor()
            
            
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
