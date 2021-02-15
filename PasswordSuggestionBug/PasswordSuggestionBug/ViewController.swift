//
//  ViewController.swift
//  PasswordSuggestionBug
//
//  Created by Naziyok, Tolga on 15.02.21.
//

import UIKit

class ViewController: UIViewController {

    private let stackView: UIStackView = UIStackView()
    private let nameInput: UITextField = UITextField()
    private let emailInput: UITextField = UITextField()
    private let passwordInput: UITextField = UITextField()
    private let passwordInput2: UITextField = UITextField()

    override func loadView() {
        super.loadView()
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameInput)
        stackView.addArrangedSubview(emailInput)
        stackView.addArrangedSubview(passwordInput)
        stackView.addArrangedSubview(passwordInput2)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        // Test123
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        
        nameInput.backgroundColor = .blue
        nameInput.placeholder = "Name"
        nameInput.textContentType = .username
        
        emailInput.backgroundColor = .brown
        emailInput.placeholder = "Email"
        emailInput.textContentType = .emailAddress
        emailInput.keyboardType = .emailAddress

        passwordInput.backgroundColor = .gray
        passwordInput.placeholder = "Password"
        passwordInput.textContentType = .oneTimeCode
        passwordInput.isSecureTextEntry = true

        passwordInput2.backgroundColor = .darkGray
        passwordInput2.placeholder = "Password"
        passwordInput2.textContentType = .oneTimeCode
        // As long as there are two fields with this setting to true, the app behaves weird
        passwordInput2.isSecureTextEntry = true

        setConstraints()
    }
    
    func setConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
    }
}

