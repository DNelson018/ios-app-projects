//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate () -> Bool {
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
           errorMessage = "Please fill in all fields."
            return false
        }
        
        // check email address
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email address."
            return false
        }
        return true
    }
}
