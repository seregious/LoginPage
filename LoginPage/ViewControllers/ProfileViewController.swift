//
//  ProfileViewController.swift
//  LoginPage
//
//  Created by Сергей Иванчихин on 06.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var userProfileImage: UILabel!
    @IBOutlet weak var userFullName: UILabel!
    @IBOutlet weak var userBirthday: UILabel!
    @IBOutlet weak var userCity: UILabel!
    @IBOutlet weak var userWork: UILabel!
    @IBOutlet weak var userStatus: UILabel!
    
    var user: User!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userProfileImage.text = user.profile.profileImage
        userFullName.text = user.profile.fullName
        userBirthday.text = user.profile.birthday
        userCity.text = user.profile.city
        userWork.text = user.profile.work
        userStatus.text = user.profile.status
    }


}
