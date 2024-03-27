//
//  SecondViewController.swift
//  RegistrationControllerHw
//
//  Created by Mac on 21/3/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let imageChild: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .child)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let View: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let Name = MakerView().makerLabel(
        text: "Full Name",
        size: 16,
        weight: .regular,
        textColor: .gray
    )
    
    private let nameTf = MakerView().makerTextField(
        placeholder: "Your Full Name",
        borderWidth: 2,
        borderColor: .gray
    )
    
    private let mobileNumber = MakerView().makerLabel(
        text: "Mobile Number",
        size: 16,
        weight: .regular,
        textColor: .gray
    )
    
    private let numberTf = MakerView().makerTextField(
        placeholder: "Your mobile number",
        borderWidth: 2,
        borderColor: .gray
    )
    
    private let email = MakerView().makerLabel(
        text: "Email",
        size: 16,
        weight: .regular,
        textColor: .gray
    )
    
    private let emailTf = MakerView().makerTextField(
        placeholder: "Your Email",
        borderWidth: 2,
        borderColor: .gray
    )
    
    private let userName = MakerView().makerLabel(
        text: "User Name",
        size: 16,
        weight: .regular,
        textColor: .gray
    )
    
    private let userNmTf = MakerView().makerTextField(
        placeholder: "Your Name",
        borderWidth: 2,
        borderColor: .gray
    )
    
    private let Password = MakerView().makerLabel(
        text: "Password",
        size: 16,
        weight: .regular,
        textColor: .gray
    )
    
    private let passwordTf = MakerView().makerTextField(
        placeholder: "Your Password",
        borderWidth: 2,
        borderColor: .gray
    )
    
    private let confilmPassword = MakerView().makerLabel(
        text: "Confilm Password",
        size: 16,
        weight: .regular,
        textColor: .gray
    )
    
    private let confilmPasswordTf = MakerView().makerTextField(
        placeholder: "Confilm Password",
        borderWidth: 2,
        borderColor: .gray
    )
    
    private lazy var singInBT: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .blue
        view.setTitle("Sing In", for: .normal)
        view.tintColor = .white
        view.layer.cornerRadius = 20
        //        view.addTarget(self, action: #selector(showSecondView), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setupUI()
        
        print("leson 1 branch")
    }
    
    private func setupUI() {
        
        view.addSubview(imageChild)
        
        NSLayoutConstraint.activate(
            [imageChild.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
             imageChild.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        view.addSubview(View)
        
        NSLayoutConstraint.activate(
            [View.bottomAnchor.constraint(equalTo: view.bottomAnchor),
             View.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             View.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             View.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/1.3)
            ])
        
        View.addSubview(Name)
        
        NSLayoutConstraint.activate(
            [Name.topAnchor.constraint(equalTo: View.topAnchor, constant: 36),
             Name.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        View.addSubview(nameTf)
        
        NSLayoutConstraint.activate(
            [nameTf.topAnchor.constraint(equalTo: Name.topAnchor, constant: 30),
             nameTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             nameTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             nameTf.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        View.addSubview(mobileNumber)
        
        NSLayoutConstraint.activate(
            [mobileNumber.topAnchor.constraint(equalTo: nameTf.topAnchor, constant: 55),
             mobileNumber.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        View.addSubview(numberTf)
        
        NSLayoutConstraint.activate(
            [numberTf.topAnchor.constraint(equalTo: mobileNumber.topAnchor, constant: 30),
             numberTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             numberTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             numberTf.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        View.addSubview(email)
        
        NSLayoutConstraint.activate(
            [email.topAnchor.constraint(equalTo: numberTf.topAnchor, constant: 55),
             email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        View.addSubview(emailTf)
        
        NSLayoutConstraint.activate(
            [emailTf.topAnchor.constraint(equalTo: email.topAnchor, constant: 30),
             emailTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             emailTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             emailTf.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        View.addSubview(userName)
        
        NSLayoutConstraint.activate(
            [userName.topAnchor.constraint(equalTo: emailTf.topAnchor, constant: 55),
             userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        View.addSubview(userNmTf)
        
        NSLayoutConstraint.activate(
            [userNmTf.topAnchor.constraint(equalTo: userName.topAnchor, constant: 30),
             userNmTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             userNmTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             userNmTf.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        View.addSubview(Password)
        
        NSLayoutConstraint.activate(
            [Password.topAnchor.constraint(equalTo: userNmTf.topAnchor, constant: 55),
             Password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        View.addSubview(passwordTf)
        
        NSLayoutConstraint.activate(
            [passwordTf.topAnchor.constraint(equalTo: Password.topAnchor, constant: 30),
             passwordTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             passwordTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             passwordTf.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        View.addSubview(confilmPassword)
        
        NSLayoutConstraint.activate(
            [confilmPassword.topAnchor.constraint(equalTo: passwordTf.topAnchor, constant: 55),
             confilmPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        View.addSubview(confilmPasswordTf)
        
        NSLayoutConstraint.activate(
            [confilmPasswordTf.topAnchor.constraint(equalTo: confilmPassword.topAnchor, constant: 30),
             confilmPasswordTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             confilmPasswordTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             confilmPasswordTf.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        
        view.addSubview(singInBT)
        
        NSLayoutConstraint.activate(
            [singInBT.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
             singInBT.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             singInBT.heightAnchor.constraint(equalToConstant: 40),
             singInBT.widthAnchor.constraint(equalToConstant: 220)
            ])
    }
    
//    @objc func result (_ sender: UIButton) {
//        guard let text1 = nameTf.text,
//              let text2 = numberTf.text,
//              let text3 = emailTf.text,
//              let text4 = userNmTf.text,
//              let text5 = passwordTf.text,
//              let text6 = confilmPasswordTf.text,
//              text5 == text6 else {
//            return
//        }
//        
//        
//        
//    }
//    
//    func validateTF(tf: UITextField, error: String, borderColor: CGColor, borderWidth: Int) {
//        
//        tf.placeholder = error
//        tf.layer.borderColor = borderColor
//        tf.layer.borderWidth = CGFloat (borderWidth)
//        
//        return
//    }
    
}
