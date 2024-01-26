//
//  RegisterViewUI.swift
//  LandKitty
//
//  Created Fatima Ramirez on 14/01/24.
//  2024 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
import FirebaseAuth

protocol RegisterViewUIDelegate {
    func notifyRegisterUser(newUser: String, newPass: String)
    
}

class RegisterViewUI: UIView{
    var delegate: RegisterViewUIDelegate?
    var navigationController: UINavigationController?
    
    private lazy var navigationBar: UINavigationBar = {
        let navigation = UINavigationBar(frame: .zero)
        navigation.translatesAutoresizingMaskIntoConstraints = false
            navigation.backgroundColor = UIColor(cgColor: CGColor(red: 91/255, green: 139/255, blue: 223/255, alpha: 1))
        return navigation
    }()
    
    private lazy var contentView: UIView = {
        let content = UIView(frame: .zero)
        if #available(iOS 13.0, *) {
            content.backgroundColor = UIColor(cgColor: CGColor(red: 91/255, green: 139/255, blue: 223/255, alpha: 1))
        } else {
            // Fallback on earlier versions
        }
        content.translatesAutoresizingMaskIntoConstraints = false
        return content
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 40)
        label.text = "TunaLand"
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Arial", size: 20)
        label.text = "Registrate a la Red de TunaLand para enterarte todo sobre la comunidad"
        label.numberOfLines = 3
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var emailUser: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 15
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.black.cgColor
        textField.placeholder = "  email@company.com"
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var passwordUser: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 15
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.black.cgColor
        textField.placeholder = "  Password"
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(cgColor: CGColor(red: 69/255, green: 188/255, blue: 203/255, alpha: 1))
        button.setTitle(" Ya Termine!", for: .normal)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(registerFinish), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    public convenience init(
        navigation: UINavigationController,
        delegate: RegisterViewUIDelegate){
            self.init()
            self.delegate = delegate
            self.navigationController = navigation
            
            setupElements()
            setupConstraints()
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupElements (){
        addSubview(navigationBar)
        addSubview(contentView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(emailUser)
        contentView.addSubview(passwordUser)
        contentView.addSubview(registerButton)
    }
    
    @objc func registerFinish(){
        delegate?.notifyRegisterUser(newUser: emailUser.text ?? "" , newPass: passwordUser.text ?? "" )
       
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
            
            titleLabel.topAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            emailUser.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30),
            emailUser.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            emailUser.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            emailUser.heightAnchor.constraint(equalToConstant: 40),
            
            passwordUser.topAnchor.constraint(equalTo: emailUser.bottomAnchor, constant: 30),
            passwordUser.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            passwordUser.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            passwordUser.heightAnchor.constraint(equalToConstant: 40),
            
            registerButton.topAnchor.constraint(equalTo: passwordUser.bottomAnchor, constant: 40),
            registerButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            registerButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            registerButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }

}




