//
//  ContentView.swift
//  Food Menu
//
//  Created by Dimitri Nelson on 8/11/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    
    var body: some View {
        
        List(menuItems) { item in
            
            MenuListRow(item: item)
        }.listStyle(.plain).onAppear {
            menuItems = dataService.getData()
        }
    }
    
}

#Preview {
    MenuView()
}
