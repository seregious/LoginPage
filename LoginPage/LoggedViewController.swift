//
//  LoggedViewController.swift
//  LoginPage
//
//  Created by Сергей Иванчихин on 05.04.2022.
//

import UIKit

class LoggedViewController: UIViewController {
    
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "hello, " + name
    }
    

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
    
}
