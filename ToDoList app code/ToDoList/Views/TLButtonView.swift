//
//  TLButtonView.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import SwiftUI

struct TLButtonView: View {
    let title : String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title).foregroundColor(.white)
                    .bold()
                    .shadow(color: .black, radius: 4)
            }
        }.padding()
    }
}

#Preview {
    TLButtonView(title: "Button", background: .pink){
        // Action
    }
}
