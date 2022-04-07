//
//  Profile.swift
//  LoginPage
//
//  Created by Сергей Иванчихин on 06.04.2022.
//

import Foundation

struct User {
    let userName, password: String
    let profile: Profile
}

struct Profile {
    let name, surname: String
    var fullName: String {
        name + " " + surname
    }
    
    let profileImage: String
    
    let hobbies: [String]
    let work, birthday, city, status: String
}

let olegProfile = Profile(
    name: "Oleg",
    surname: "Popov",
    profileImage: "🧑🏻‍💻",
    hobbies: ["reading", "sitting", "eating", "sleaping", "learning"],
    work: "iOS developer",
    birthday: "04.06.1993",
    city: "Belgorod",
    status: "learning Swift"
)

let oleg = User(userName: "oleg", password: "popov", profile: olegProfile)
