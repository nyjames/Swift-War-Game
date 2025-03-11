//
//  ContentView.swift
//  war_card_game
//
//  Created by Nya James on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    
    // declaring new variables
    
    
    // default on back of cards
    @State private var playercard = "back"
    @State private var cpucard = "back"
    
    // default zero score for both
    @State private var playerscore = 0
    @State private var cpuscore = 0
    
    
    var body: some View {
        
        
        
        ZStack {
            
            //background (green)
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack {
                
                Spacer()
                
                // logo
                
                Image("logo")
                
                Spacer()
                
                // cards
                
                HStack{
                    Spacer()
                    
                    Image(playercard)
                    
                    Spacer()
                    
                    Image(cpucard)
                    
                    Spacer()
                }
                
                Spacer()
                
                // deal button with label
                
                Button {
                    
                    // deal function
                    
                    deal()
                    
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                // players
                
                HStack{
                    Spacer()
                    
                    // you
                    
                    Text("Player")
                    
                    Spacer()
                    
                    // computer
                    
                    Text("CPU")
                    
                    Spacer()
                    
                }
                .font(.headline)
                .foregroundColor(.white)
                
                Spacer()
                
                HStack{
                    
                    // scores
                    
                    Spacer()
                    
                    // your score
                    
                    Text(String(playerscore))
                    Spacer()
                    
                    // cpu score
                    
                    Text(String(cpuscore))
                    Spacer()
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                
                Spacer()
                
            }
            
        }
        
        
        
        
    }
    
    // -------------------- LOGIC ----------------------------------
    
    // declaring a new function to randomize elements
    
    func deal() {
        
        // new value
        
        let playerrandomizednumber = String(Int.random(in: 2...14))
        let cpurandomizednumber = String(Int.random(in: 2...14))
        
        // randomize the player card
        
        playercard = "card" + playerrandomizednumber
        
        // randomize the cpu card
        
        cpucard = "card" + cpurandomizednumber
        
        // update score
        
        if playerrandomizednumber > cpurandomizednumber {
            // add one to score
            playerscore += 1
            
        }
        
        else if cpurandomizednumber > playerrandomizednumber {
            // add one to cpu score
            cpuscore += 1
        }
                
        
    }
}
        

#Preview {
    ContentView()
}
