//
//  ViewController.swift
//  RegistrationControllerHw
//
//  Created by Mac on 21/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let imagechild: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .child)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
//    private let tittle:  UILabel = {
//        let view = UILabel()
//        view.text = "Welcome Back"
//        view.font = .systemFont(ofSize: 42, weight: .bold)
//        view.textColor = UIColor .white
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.numberOfLines = 0
//        return view
//    }()
    
    private let tittle = MakerView().makerLabel(
    text: "Welcome Back",
    size: 46,
    weight: .bold
    )

    
//    private let descr:  UILabel = {
//        let view = UILabel()
//        view.text = "Sing in to continue"
//        view.font = .systemFont(ofSize: 22, weight: .regular)
//        view.textColor = UIColor .systemGray4
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.numberOfLines = 0
//        return view
//    }()
    
    private let descr = MakerView().makerLabel(
    text: "Sing in to continue",
    size: 22,
    weight: .regular,
    textColor: .systemGray4
    )
    
    private let viewtextField: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tittletxtEmail:  UILabel = {
        let view = UILabel()
        view.text = "Employee id / Email"
        view.font = .systemFont(ofSize: 16, weight: .medium)
        view.textColor = UIColor .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfLines = 0
        return view
    }()
    
//    private let txtfieldEmail: UITextField = {
//        let view = UITextField()
//        view.placeholder = "Your e/mail address"
//        view.layer.cornerRadius = 16
//        view.backgroundColor = .systemBackground
//        view.layer.borderColor = UIColor.gray.cgColor
//        view.layer.borderWidth = 2
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    private let txtfieldEmail = MakerView().makerTextField(
    placeholder: "Your e/mail address",
    borderWidth: 2,
    borderColor: .gray
    )
    
    
    private let lins: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .border2)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
//    private let tittlepassword:  UILabel = {
//        let view = UILabel()
//        view.text = "Password"
//        view.font = .systemFont(ofSize: 16, weight: .medium)
//        view.textColor = UIColor .gray
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.numberOfLines = 0
//        return view
//    }()
    
    private let tittlepassword = MakerView().makerLabel(
    text: "Password",
    size: 16,
    weight: .medium,
    textColor: .gray
    )
    
//    private let txtfieldPassword: UITextField = {
//        let view = UITextField()
//        view.placeholder = "Your password"
//        view.layer.cornerRadius = 16
//        view.backgroundColor = .systemBackground
//        view.layer.borderColor = UIColor.gray.cgColor
//        view.layer.borderWidth = 2
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    private let txtfieldPassword = MakerView().makerTextField(
    placeholder:"Your password",
    borderWidth: 2,
    borderColor: .gray
    )
    
    private let eyebutton: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .eye)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let lins2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .border2)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let forgetpswBT: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Forgot Password?", for: .normal)
        view.tintColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var singInBT: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .blue
        view.setTitle("Sing In", for: .normal)
        view.tintColor = .white
        view.layer.cornerRadius = 20
        view.addTarget(self, action: #selector(showSecondView), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setupController()
        setupUI()
        
    }
    
    private func setupController() {
        navigationController?.navigationBar.isHidden = true
    }
    
    private func setupUI() {
        
        view.addSubview(imagechild)
        
        NSLayoutConstraint.activate(
            [imagechild.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
             imagechild.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        view.addSubview(tittle)
        
        NSLayoutConstraint.activate(
            [tittle.bottomAnchor.constraint(equalTo: imagechild.bottomAnchor, constant: 43),
             tittle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
            ])
        
        view.addSubview(descr)
        
        NSLayoutConstraint.activate(
            [descr.bottomAnchor.constraint(equalTo: tittle.bottomAnchor, constant: 30),
             descr.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
            ])
        
        view.addSubview(viewtextField)
        
        NSLayoutConstraint.activate(
            [viewtextField.bottomAnchor.constraint(equalTo: view.bottomAnchor),
             viewtextField.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             viewtextField.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             viewtextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/1.9)
            ])
        
        viewtextField.addSubview(tittletxtEmail)
        
        NSLayoutConstraint.activate(
            [tittletxtEmail.topAnchor.constraint(equalTo: viewtextField.topAnchor, constant: 36),
             tittletxtEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
            ])
        
        viewtextField.addSubview(txtfieldEmail)
        
        NSLayoutConstraint.activate(
            [txtfieldEmail.topAnchor.constraint(equalTo: tittletxtEmail.topAnchor, constant: 40),
             txtfieldEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             txtfieldEmail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             txtfieldEmail.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        viewtextField.addSubview(lins)
        
        NSLayoutConstraint.activate(
            [lins.topAnchor.constraint(equalTo: txtfieldEmail.topAnchor, constant: 30),
             lins.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             lins.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
        
        view.addSubview(tittlepassword)
        
        NSLayoutConstraint.activate(
            [tittlepassword.topAnchor.constraint(equalTo: lins.topAnchor, constant: 35),
             tittlepassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        view.addSubview(txtfieldPassword)
        
        NSLayoutConstraint.activate(
            [txtfieldPassword.topAnchor.constraint(equalTo: tittlepassword.topAnchor, constant: 40),
             txtfieldPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             txtfieldPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             txtfieldPassword.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        txtfieldPassword.addSubview(eyebutton)
        
        NSLayoutConstraint.activate(
            [eyebutton.trailingAnchor.constraint(equalTo: txtfieldPassword.trailingAnchor, constant: 0)
            ])
        
        view.addSubview(lins2)
        
        NSLayoutConstraint.activate(
            [lins2.topAnchor.constraint(equalTo: txtfieldPassword.topAnchor, constant: 30),
             lins2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             lins2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26)
            ])
        
        view.addSubview(forgetpswBT)
        
        NSLayoutConstraint.activate(
            [forgetpswBT.topAnchor.constraint(equalTo: lins2.topAnchor, constant: 5),
             forgetpswBT.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
        
        view.addSubview(singInBT)
        
        NSLayoutConstraint.activate(
            [singInBT.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
             singInBT.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             singInBT.heightAnchor.constraint(equalToConstant: 40),
             singInBT.widthAnchor.constraint(equalToConstant: 220)
            ])
        
    }
    
    @objc func showSecondView(_ center: UIButton) {
        guard let emailText = txtfieldEmail.text, !emailText.isEmpty else {
            if let text = txtfieldEmail.text, text.count < 6 {
                txtfieldEmail.placeholder = "Enter your Email"
                txtfieldEmail.layer.borderColor = UIColor.red.cgColor
                txtfieldEmail.layer.borderWidth = 2
                return
            }
            
            return
        }
        
        guard let passwordText = txtfieldPassword.text, passwordText.count >= 6 else {
            txtfieldPassword.placeholder = "Enter your Email"
            txtfieldPassword.layer.borderColor = UIColor.red.cgColor
            txtfieldPassword.layer.borderWidth = 2
            return
        }
        
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}


