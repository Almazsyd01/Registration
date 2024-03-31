//
//  ViewController.swift
//  RegistrationControllerHw
//
//  Created by Mac on 30/3/24.
//

import UIKit

class SuccesViewController: UIViewController {
    
    private let lockImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .lock)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let idTF = MakerView().makerTextField(
        textColor: .white,
        backgroundColor: .gray,
        placeholder: "Employee Id",
        borderWidth: 1,
        borderColor: .white
    )
    
    private let tittleLoginIN = MakerView().makerLabel(
        text: "Trouble Loggin in?",
        size: 24,
        weight: .bold
    )
    
    private let descr = MakerView().makerLabel(
        text: "Enter your email or  mobile number and we'll send you a OTP to get back into your account.",
        size: 11,
        weight: .regular
    )
    
    private let viewCheckNumber: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tittleNumber = MakerView().makerLabel(
        text: "Mobile Number",
        size: 12,
        weight: .regular,
        textColor: .gray
    )
    
    private let mobileNumberTF = MakerView().makerTextField(
        borderWidth: 1,
        borderColor: .gray
    )
    
    private let buttonSubmit: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .green
        view.setTitle("Submit", for: .normal)
        view.tintColor = .white
        view.layer.cornerRadius = 20
        //        view.addTarget(self, action: #selector(), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var number: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        mobileNumberTF.text = number
        setupUI()
    }
    
    private func setupUI() {
        
        view.addSubview(lockImage)
        
        NSLayoutConstraint.activate(
            [lockImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
             lockImage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        view.addSubview(idTF)
        
        NSLayoutConstraint.activate(
            [idTF.bottomAnchor.constraint(equalTo: lockImage.bottomAnchor, constant: 60),
             idTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
             idTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
             idTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        view.addSubview(tittleLoginIN)
        
        NSLayoutConstraint.activate(
            [tittleLoginIN.bottomAnchor.constraint(equalTo: idTF.bottomAnchor, constant: 50),
             tittleLoginIN.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        view.addSubview(descr)
        
        NSLayoutConstraint.activate(
            [descr.bottomAnchor.constraint(equalTo: tittleLoginIN.bottomAnchor, constant: 25),
             descr.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        view.addSubview(viewCheckNumber)
        
        NSLayoutConstraint.activate(
            [viewCheckNumber.bottomAnchor.constraint(equalTo: view.bottomAnchor),
             viewCheckNumber.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             viewCheckNumber.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             viewCheckNumber.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/1.9)
            ])
        
        viewCheckNumber.addSubview(tittleNumber)
        
        NSLayoutConstraint.activate(
            [tittleNumber.topAnchor.constraint(equalTo: viewCheckNumber.topAnchor, constant: 45),
             tittleNumber.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             tittleNumber.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26)
            ])
        
        viewCheckNumber.addSubview(mobileNumberTF)
        
        NSLayoutConstraint.activate(
            [mobileNumberTF.topAnchor.constraint(equalTo: tittleNumber.topAnchor, constant: 30),
             mobileNumberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             mobileNumberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             mobileNumberTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        viewCheckNumber.addSubview(buttonSubmit)
        
        NSLayoutConstraint.activate(
            [buttonSubmit.bottomAnchor.constraint(equalTo: viewCheckNumber.bottomAnchor, constant: -40),
             buttonSubmit.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             buttonSubmit.heightAnchor.constraint(equalToConstant: 40),
             buttonSubmit.widthAnchor.constraint(equalToConstant: 120)
             
            ])
    }
    
    @objc func showSucces (_ sender: UIButton) {
        guard let text1 = idTF.text, !text1.isEmpty else {
            if let text = idTF.text, text.count < 1 {
                idTF.placeholder = "Enter your id"
                idTF.layer.borderColor = UIColor.red.cgColor
                idTF.layer.borderWidth = 2
                return
            }
            
            return
        }
        
        let vc = 
    }
    
}
