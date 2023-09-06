//
//  ViewController.swift
//  17_08_2023_FirstDemo
//
//  Created by Vishal Jagtap on 01/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!

    //way 1
    var labelDimensions : CGRect?
    var userNameLabel : UILabel?
    var textFieldDimenesions : CGRect?
    var passwordTextField : UITextField?
    var saveButtonDimensions : CGRect?
    var saveButton : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
//        creatingSimpleUIThroughCode()
    }
    
    
    @IBAction func btnSubmit(_ sender: Any) {
        
     let nameExtractedFromTF =    userNameTextField.text
        
        messageLabel.text = "Welocme" + nameExtractedFromTF!
        
        var secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
//        sender.titleLabel!
        print(sender.tag)
        if sender.tag == 1{
            messageLabel.backgroundColor = .cyan
        }else if sender.tag == 2{
            messageLabel.backgroundColor = .gray
        }else {
            messageLabel.backgroundColor = .magenta
        }
    }
    
    func creatingSimpleUIThroughCode(){
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
        
        saveButtonDimensions = CGRect(
            x: 50,
            y: 420,
            width: Int((self.userNameLabel?.frame.width)!),
            height: Int((self.userNameLabel?.frame.height)!))
        saveButton = UIButton(frame: saveButtonDimensions!)
    }
}
