//
//  HeaderView.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle : Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title).font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                    .shadow(color: .black, radius: 4)
                
                Text(subtitle)
                    .font(.system(size: 28))
                    .italic()
                    .foregroundColor(Color.white)
                    .shadow(color: .black, radius: 4)
                
            }.padding(.top, 30)

        }
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 350)
        .offset(y: -148)
        
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "subtitle", angle: 15, background: Color.gray)
}
