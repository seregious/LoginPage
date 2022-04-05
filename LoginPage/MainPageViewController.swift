//
//  ViewController.swift
//  LoginPage
//
//  Created by Сергей Иванчихин on 05.04.2022.
//

import UIKit

class MainPageViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameLabel.delegate = self
        self.passwordLabel.delegate = self
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loggedVC = segue.destination as? LoggedViewController else {return}
        loggedVC.name = usernameLabel.text
    }

    @IBAction func loginButton() {
        if usernameLabel.text == "Oleg" && passwordLabel.text == "password" {
            performSegue(withIdentifier: "loginAction", sender: nil)
        } else {
            showAlert(with: "Oh no!", and: "Invalid Username or Password", action: self.passwordLabel.text = "")
        }
    }
    
    @IBAction func forgotNameButton() {
        showAlert(with: "Oh no!", and: "Your name is Oleg", action: self.usernameLabel.text = "")
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        showAlert(with: "Oh no!", and: "Your password is password", action: self.passwordLabel.text = "")
    }
    
    @IBAction func logOut(for segue: UIStoryboardSegue) {
        usernameLabel.text = ""
        passwordLabel.text = ""
    }
}

extension MainPageViewController {
    private func showAlert(with title: String, and massage: String, action: ()) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let dismissButton = UIAlertAction(title: "fine", style: .default) {_ in
            action
        }
        alert.addAction(dismissButton)
        present(alert, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        if textField == usernameLabel {
            passwordLabel.becomeFirstResponder()
        } else {
            loginButton()
            
        }

        return true
    }
}
