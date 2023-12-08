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
    
    
    override func loadView() {
        
        let letterButton = UIButton(type: .system)
        
        view = UIView()
        view.backgroundColor = .lightGray
        
        
        
        
        
        
        
        
        //        view.addSubview(letterButton)
        //
        
        
        
        
        let keyboardView = UIView()
        keyboardView.translatesAutoresizingMaskIntoConstraints = false
        keyboardView.backgroundColor = .cyan
        
        
        view.addSubview(keyboardView)
        
        NSLayoutConstraint.activate([
            keyboardView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            keyboardView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            keyboardView.heightAnchor.constraint(equalToConstant: 320),
            keyboardView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor)
        ])
        //
        //        categories = filehandler.getCategories()
        
        //        for row in 0..<2{
        //            for col in 0..<11{
        
        
        
        letterButton.backgroundColor = .black
        letterButton.translatesAutoresizingMaskIntoConstraints = false
        
        letterButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        letterButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        keyboardView.addSubview(letterButton)
        letterButton.centerXAnchor.constraint(equalTo: keyboardView.centerXAnchor).isActive = true
       
        letterButton.centerYAnchor.constraint(equalTo: keyboardView.centerYAnchor).isActive = true
        
        
        
        
        //                letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
        //                letterButton.setTitle(String(row) + String(col), for: .normal)
        //        letterButton.backgroundColor = .black
        //        letterButton.layer.borderWidth = 1
        
        //        letterButton.widthAnchor.constraint(equalToConstant: 10).isActive = true
        //        letterButton.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        //
        
        
        
        //            }
        //        }
        
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

