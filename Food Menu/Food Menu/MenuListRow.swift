//
//  MenuListRow.swift
//  Food Menu
//
//  Created by Dimitri Nelson on 8/12/24.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name).bold()
            
            Spacer()
            
            Text("$" + item.price)
        }.listRowSeparator(.hidden).listRowBackground(Color(.blue).ignoresSafeArea().opacity(0.5))
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Test", price: "*.99", imageName: "onigiri"))
}
