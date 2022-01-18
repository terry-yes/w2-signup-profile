//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by terry.yes on 2022/01/18.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if idTextField.text == "kakao" &&
            passwordTextField.text == "kakao" {
            return true
        }
        return false
    }
    
}
