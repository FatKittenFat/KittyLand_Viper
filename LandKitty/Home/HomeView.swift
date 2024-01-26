//
//  HomeView.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
class HomeView: UIViewController {
    var presenter: HomePresenterProtocol?
    private var ui: HomeViewUI?
    
    
    override func loadView() {
        ui = HomeViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
    
}

extension HomeView: HomeViewProtocol {
    
}

extension HomeView: HomeViewUIDelegate {
    func registerSection() {
        presenter?.registerSection()
    }
    
}
