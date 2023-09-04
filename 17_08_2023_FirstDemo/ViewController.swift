//
//  ViewController.swift
//  17_08_2023_FirstDemo
//
//  Created by Vishal Jagtap on 01/09/23.
//

import UIKit

class ViewController: UIViewController {

    var labelDimensions : CGRect?
    var userNameLabel : UILabel?
    var textFieldDimenesions : CGRect?
    var passwordTextField : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatingSimpleUI()
    }
    
    func creatingSimpleUI(){
        labelDimensions = CGRect(x: 50, y: 200, width: 300, height: 60)
        userNameLabel = UILabel(frame: labelDimensions!)
        userNameLabel!.text = "Welcome To iOS Batch"
        userNameLabel!.backgroundColor = .lightGray
        userNameLabel!.textColor = .brown
          
          self.view.addSubview(userNameLabel!)
        
        textFieldDimenesions = CGRect(
            x: 50,
            y: 320,
            width: Int((self.userNameLabel?.frame.width)!),
            height: Int((self.userNameLabel?.frame.height)!))
       passwordTextField = UITextField(frame: textFieldDimenesions!)
        
        passwordTextField?.backgroundColor = .lightGray
        passwordTextField?.textColor = .brown
        passwordTextField?.placeholder = "Enter password"
        self.view.addSubview(passwordTextField!)
    }
}
