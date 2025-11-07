//
//  User.swift
//  AppetizersApp
//
//  Created by David Cardeña Formoso on 7/11/25.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthday: Date = Date()
    var extraNapkins: Bool = false
    var frequentReffils: Bool = false
}
