//
//  HomeProtocols.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
protocol HomeViewProtocol: class {
    
}

protocol HomeInteractorProtocol: class {
    func registerSection ()
    
}

protocol HomePresenterProtocol: class {
    func registerSection ()
    func registerSuccess()
    
}

protocol HomeRouterProtocol: class {
    func registerSection()
}
