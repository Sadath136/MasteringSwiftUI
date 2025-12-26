//
//  AppStorageContainer.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 22/12/25.
//

import Foundation

struct AppStorageContainer: Codable {
    var firstName: String
    var secName: String
    var email: String
    var number: String
    
    init(firstName: String, secName: String, email: String, number: String) {
        self.firstName = firstName
        self.secName = secName
        self.email = email
        self.number = number
    }
}
