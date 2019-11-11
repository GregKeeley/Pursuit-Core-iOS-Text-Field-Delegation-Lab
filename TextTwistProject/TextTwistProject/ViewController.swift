//
//  ViewController.swift
//  TextTwistProject
//
//  Created by Benjamin Stone on 11/4/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: View Controller Properties
    
    @IBOutlet weak var scrambledWord: UILabel!
    
    
    @IBOutlet weak var userInput: UITextField!
    
    
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInput.delegate = self
    }
    
    // MARK: Actions and Methods
    
    
    @IBAction func userInputAction(_ sender: UITextField) {
    }
    
    
    
    @IBAction func nextWord(_ sender: UIButton) {
        scrambledWord.text = Word.getRandomWord().scrambled
    }
    
    
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        userInput.resignFirstResponder()
        return true
    }
    
    
    
}

