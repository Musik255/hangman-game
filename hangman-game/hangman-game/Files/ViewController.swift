//
//  ViewController.swift
//  hangman-game
//
//  Created by Павел Чвыров on 08.12.2023.
//

import UIKit

class ViewController: UIViewController {

    
    var categories = [Category]()
    
    var filehandler = FileHandler()
    
    var keyButtons = [UIButton]()
    
    var keyButtons1 = [UIButton]()
//    var keyButtons2 = [UIButton]()
//    var keyButtons3 = [UIButton]()
    
    var keyViews = [UIView]()
    
    
    override func loadView() {
        
        
        
        view = UIView()
        view.backgroundColor = .lightGray
        
        
        
        
        
        //        view.addSubview(letterButton)
        //
        
        
        let keyboardView = UIView()
        //        let prev = UIButton(type: .system)
        keyboardView.translatesAutoresizingMaskIntoConstraints = false
        keyboardView.backgroundColor = .cyan
        
        
        view.addSubview(keyboardView)
        
        NSLayoutConstraint.activate([
            keyboardView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            keyboardView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -10),
            //            keyboardView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            keyboardView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor)
        ])
        
        var buttonLetter = UIButton(type: .system)
        
        let oneButton = UIButton(type: .system)
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        oneButton.backgroundColor = .black
        keyButtons.append(oneButton)
        
        keyboardView.addSubview(oneButton)
        
        NSLayoutConstraint.activate([
            oneButton.widthAnchor.constraint(equalTo: keyboardView.widthAnchor, multiplier: 1/11, constant: -1),
            oneButton.heightAnchor.constraint(equalTo: oneButton.widthAnchor, multiplier: 1.5),
            oneButton.leadingAnchor.constraint(equalTo: keyboardView.leadingAnchor),
            oneButton.topAnchor.constraint(equalTo: keyboardView.topAnchor),
            keyboardView.heightAnchor.constraint(equalTo: oneButton.heightAnchor, multiplier: 3)
        ])
        
        
        for col in 0..<10{

            //                categories = filehandler.getCategories()
            
            let letterButton = UIButton(type: .system)
            keyboardView.addSubview(letterButton)
            letterButton.translatesAutoresizingMaskIntoConstraints = false
            
            letterButton.backgroundColor = .black
//            letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
            
            
            letterButton.widthAnchor.constraint(equalTo: oneButton.widthAnchor).isActive = true
            letterButton.heightAnchor.constraint(equalTo: oneButton.heightAnchor).isActive = true
            letterButton.leftAnchor.constraint(equalTo: keyButtons[col].rightAnchor, constant: 1).isActive = true
            
            
            letterButton.topAnchor.constraint(equalTo: keyboardView.topAnchor).isActive = true
            
            keyButtons.append(letterButton)
            
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //            //
            //            //                letterButton.setTitle(String(row) + String(col), for: .normal)
            //            //        letterButton.backgroundColor = .black
            //            //        letterButton.layer.borderWidth = 1
            //
            //            //        letterButton.widthAnchor.constraint(equalToConstant: 10).isActive = true
            //            //        letterButton.heightAnchor.constraint(equalToConstant: 10).isActive = true
            //
            //            //
            //
            //
            //
            //            //            }
            //        }
            
            
            
            
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

