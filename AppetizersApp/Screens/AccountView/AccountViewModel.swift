//
//  AccountViewModel.swift
//  AppetizersApp
//
//  Created by David Cardeña Formoso on 6/11/25.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthday: Date = Date()
    @Published var extraNapkins: Bool = false
    @Published var frequentReffils: Bool = false
    @Published var alertItem: AlertItem?
    
    var isValidForm : Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        print("Changes have been saved successfully!")
    }
}
