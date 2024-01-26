//
//  HomeViewUI.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

protocol HomeViewUIDelegate {
    func registerSection ()
}

class HomeViewUI: UIView{
    var delegate: HomeViewUIDelegate?
    var navigationController: UINavigationController?
    
    // elementos
    private lazy var navigationBar: UINavigationBar = {
        let navigation = UINavigationBar(frame: .zero)
        navigation.translatesAutoresizingMaskIntoConstraints = false
        navigation.backgroundColor = UIColor(cgColor: CGColor(red: 91/255, green: 139/255, blue: 223/255, alpha: 1))
        
        return navigation
    }()
    
    private lazy var contentView: UIView = {
        let content = UIView(frame: .zero)
        content.backgroundColor = UIColor(cgColor: CGColor(red: 91/255, green: 139/255, blue: 223/255, alpha: 1))
        content.translatesAutoresizingMaskIntoConstraints = false
        return content
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 40)
        label.text = "Bienvenido a TunaLand"
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 15
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.black.cgColor
        textField.placeholder = "  email@company.com"
        textField.keyboardType = .emailAddress
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 15
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.black.cgColor
        textField.placeholder = "  password"
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(cgColor: CGColor(red: 44/255, green: 100/255, blue: 198/255, alpha: 1))
        button.setTitle("Iniciar", for: .normal)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(loginUser), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var orLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Arial", size: 20)
        label.text = " - o - "
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(cgColor: CGColor(red: 69/255, green: 188/255, blue: 203/255, alpha: 1))
        button.setTitle("Registrate aquí", for: .normal)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(registerUser), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    public convenience init(
        navigation: UINavigationController,
        delegate: HomeViewUIDelegate){
            self.init()
            self.delegate = delegate
            self.navigationController = navigation
            
            emailTextField.delegate = self
            passwordTextField.delegate = self
            
            setupElements()
            setupConstraints()
        
            
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupElements(){
        addSubview(navigationBar)
        addSubview(contentView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(emailTextField)
        contentView.addSubview(passwordTextField)
        contentView.addSubview(loginButton)
        contentView.addSubview(orLabel)
        contentView.addSubview(registerButton)
    }
    
    @objc func loginUser () {
        print("Login...")
    }
    
    @objc func registerUser(){
        delegate?.registerSection()
        print("Registro...")
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
        
            navigationBar.topAnchor.constraint(equalTo: self.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: navigationBar.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            emailTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 200),
            emailTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            emailTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            passwordTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            
            orLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            orLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            registerButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 10),
            registerButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            registerButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            registerButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }

}

extension HomeViewUI: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        print("Bajando teclado")
        return true
    }
}





