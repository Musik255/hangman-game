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
    
    
    
    override func loadView() {
        categories = filehandler.getCategories()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

