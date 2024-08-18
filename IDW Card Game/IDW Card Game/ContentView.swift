//
//  ContentView.swift
//  IDW Card Game
//
//  Created by Dimitri Nelson on 8/8/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var playerCard = "card4"
    @State var cpuCard = "card6"
    @State var playerscore = 0
    @State var cpuscore = 0
    var body: some View {
    
        ZStack {
           
            if colorScheme == .dark {
                Image("background-plain")
                    .resizable()
                    .ignoresSafeArea()
            }
            else {
                Image("background-wood-grain")
                    .resizable()
                    .ignoresSafeArea()
            }
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")                })
               
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline)
                            .padding(.bottom, 10.0)
                    Text(String(playerscore)).font(.largeTitle)
                }
                    Spacer()
                VStack{
                    Text("CPU").font(.headline)
                        .padding(.bottom, 10.0)
                    Text(String(cpuscore)).font(.largeTitle)
                }
                    Spacer()
                }.foregroundColor(.white)
            }
            
        }
        
    }
    
    func deal() {
        
        let playercardvalue = Int.random(in: 2...14)
        playerCard = "card" + String(playercardvalue)
        
        let cpucardvalue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpucardvalue)
        
        if playercardvalue > cpucardvalue {
            
            playerscore += 1
        }
        else if cpucardvalue > playercardvalue {
            
            cpuscore += 1
        }
        
        
    }
}

#Preview {
    ContentView()
}
