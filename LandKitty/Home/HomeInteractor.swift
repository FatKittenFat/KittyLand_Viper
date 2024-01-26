//
//  HomeInteractor.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
class HomeInteractor{
    var presenter: HomePresenterProtocol?
    
    
    
}

extension HomeInteractor: HomeInteractorProtocol {
    func registerSection() {
        presenter?.registerSuccess()
    }
    
}
