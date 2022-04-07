//
//  LoggedViewController.swift
//  LoginPage
//
//  Created by Сергей Иванчихин on 05.04.2022.
//

import UIKit

class LoggedViewController: UIViewController {
    
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "hello, " + user.profile.name
    }
    

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
    
}
