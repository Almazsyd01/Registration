//
//  File.swift
//  RegistrationControllerHw
//
//  Created by Mac on 24/3/24.
//
import UIKit

class MakerView {
    
    
    func makerLabel(
        text: String = "",
        size: Int = 12,
        weight: UIFont.Weight ,
        textColor: UIColor = .white,
        textAlignment: NSTextAlignment = .left,
        numberOfLins: Int = 0,
        lineBreakMode:NSLineBreakMode = .byWordWrapping,
        translatesAutoresizingMaskIntoConstraints: Bool = false ) -> UILabel {
        
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: CGFloat(size), weight: weight)
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.numberOfLines =  numberOfLins
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    func makerTextField(
        textColor: UIColor = .black,
        cornerRadius: CGFloat = 16,
        backgroundColor: UIColor = UIColor.systemBackground,
        placeholder: String = "",
        borderWidth: CGFloat = 0,
        borderColor: UIColor = UIColor.clear,
        size: CGFloat = 16,
        translatesAutoresizingMaskIntoConstraints: Bool = false
        
    ) -> UITextField {
        let tf = UITextField()
        tf.textColor = textColor
        tf.placeholder = placeholder
        tf.layer.cornerRadius = cornerRadius
        tf.backgroundColor = backgroundColor
        tf.layer.borderWidth = borderWidth
        tf.layer.borderColor = borderColor.cgColor
        tf.font = .boldSystemFont(ofSize: size)
        tf.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        tf.keyboardType = .numberPad
        
        let view = UIView (frame: CGRect(x: 0, y: 0, width: 8, height: 1))
        
        tf.leftView = view
        tf.leftViewMode = .always
        
        return tf
    }
        
}

