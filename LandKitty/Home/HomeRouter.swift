//
//  HomeRouter.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

class HomeRouter{
    var navigation: UINavigationController?
    
}

extension HomeRouter: HomeRouterProtocol{
    func registerSection() {
        let registerModule = RegisterMain.createModule(navigation: navigation!)
        navigation?.pushViewController(registerModule, animated: true)
    }
    
    
}
