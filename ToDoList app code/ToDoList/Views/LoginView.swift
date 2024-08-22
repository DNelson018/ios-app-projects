//
//  LoginView.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Organize your life", angle: 15, background: Color.accentColor)
                
            
                // Login Info
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButtonView(title: "Log In", background: .accentColor) {
                        viewModel.login()
                    }
                    
                }
                .offset(y: -50)
                
                // Create Account
                
                VStack {
                    Text("New Here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                    
                }.padding(.bottom, 20)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
