//
//  ContentView.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import SwiftUI

struct WorkingView: View {
    @StateObject var viewModel = WorkingViewViewModel()
    
    var body: some View {
       
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
           accountView
        } else {
            LoginView()
        }
        
    }
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                Label("Home", systemImage: "house")
            }
            
                ProfileView()
                    .tabItem {
                    Label("Profile", systemImage: "person.circle")
        }
    
        }
    }
    
}

#Preview {
    WorkingView()
}
