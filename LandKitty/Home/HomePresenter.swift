//
//  HomePresenter.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
class HomePresenter {
    var interactor: HomeInteractorProtocol?
    weak var view: HomeViewProtocol?
    var router: HomeRouterProtocol?
    
}



extension HomePresenter: HomePresenterProtocol {
    func registerSuccess() {
        router?.registerSection()
    }
    
    func registerSection() {
        interactor?.registerSection()
    }
    
    
}
